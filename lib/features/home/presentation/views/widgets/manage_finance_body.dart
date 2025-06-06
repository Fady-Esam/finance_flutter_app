import 'package:finance_flutter_app/core/funcs/get_recurrence_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/funcs/get_next_monthly_date.dart';
import '../../../../../core/widgets/drop_down_button_form_field_category_items.dart';
import '../../../../../generated/l10n.dart';
import '../../../../category/data/models/category_model.dart';
import '../../../../category/presentation/manager/cubits/manage_category_cubit/manage_category_cubit.dart';
import '../../../../category/presentation/manager/cubits/manage_category_cubit/manage_category_state.dart';
import '../../../../user_setup/data/models/user_setup_model.dart';
import '../../../../user_setup/presentation/manager/cubits/manage_user_setup_cubit/manage_user_setup_cubit.dart';
import '../../../data/enums/recurrence_type_enum.dart';
import '../../../data/enums/transaction_type_enum.dart';
import '../../../data/models/finance_item_model.dart';
import 'amount_field.dart';
import 'date_picker_field.dart';
import 'description_field.dart';
import 'title_field.dart';
import 'custom_number_keyboard.dart';
import 'manage_finance_buttons.dart';

class ManageTransactionBody extends StatefulWidget {
  const ManageTransactionBody({
    super.key,
    required this.transactionTypeEnum,
    required this.amountController,
    required this.titleController,
    required this.descriptionController,
    required this.modelDateTime,
    required this.currentDateTime,
    this.financeItemModel,
    this.isFromHomePage = true,
    this.isAmountPositive,
    this.categoryFilteredId,
    this.dateTimeRange,
    this.endDate,
    this.recurrenceType,
  });

  final TransactionTypeEnum transactionTypeEnum;
  final TextEditingController amountController;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final FinanceItemModel? financeItemModel;
  final DateTime? currentDateTime;
  final DateTime? modelDateTime;
  final bool isFromHomePage;
  final bool? isAmountPositive;
  final int? categoryFilteredId;
  final DateTimeRange? dateTimeRange;
  final DateTime? endDate;
  final RecurrenceType? recurrenceType;
  @override
  State<ManageTransactionBody> createState() => _ManageTransactionBodyState();
}

class _ManageTransactionBodyState extends State<ManageTransactionBody> {
  late DateTime selectedDate;
  late DateTime currentDateTime;
  late DateTime endDate;
  CategoryModel? selectedCategory;
  late RecurrenceType recurrenceType;
  UserSetupModel? userSetupModel;
  Future<void> getUserSetupModelData() async {
    userSetupModel =
        await BlocProvider.of<ManageUserSetupCubit>(
          context,
        ).getUserSetupModel();
  }

  @override
  void initState() {
    super.initState();
    selectedDate = widget.modelDateTime ?? DateTime.now();
    currentDateTime = widget.currentDateTime ?? DateTime.now();
    BlocProvider.of<ManageCategoryCubit>(context).getAllCategories();
    selectedCategory = BlocProvider.of<ManageCategoryCubit>(
      context,
    ).getCategoryById(widget.financeItemModel?.categoryId);
    getUserSetupModelData();
    endDate = widget.endDate ?? getNextMonthlyDate(DateTime.now());
    recurrenceType = widget.recurrenceType ?? RecurrenceType.none;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TitleField(titleController: widget.titleController),
            const SizedBox(height: 12),
            DescriptionField(titleController: widget.descriptionController),
            const SizedBox(height: 12),
            AmountField(
              transactionTypeEnum: widget.transactionTypeEnum,
              amountController: widget.amountController,
            ),
            const SizedBox(height: 16),
            BlocBuilder<ManageCategoryCubit, ManageCategoryState>(
              builder: (context, state) {
                if (state is GetAllCategorySuccessState) {
                  final categoryList = state.categoryItems;
                  return DropdownButtonFormFieldCategoryItems(
                    categories: categoryList,
                    noTitle: S.of(context).no_category,
                    selectedCategory: selectedCategory,
                    onCategoryChanged: (value) {
                      setState(() {
                        selectedCategory = value;
                      });
                    },
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
            const SizedBox(height: 8),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                S.of(context).addition_datetime,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 180, 180, 180),
                ),
              ),
            ),
            const SizedBox(height: 8),
            DatePickerField(
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime.now().subtract(Duration(days: 15)),
                  lastDate: DateTime.now(),
                );
                if (pickedDate != null) {
                  setState(() {
                    selectedDate = pickedDate;
                    endDate = getNextMonthlyDate(pickedDate);
                  });
                }
              },
              selectedDate: selectedDate,
            ),
            const SizedBox(height: 12),
            // Add these in your build() method below DatePickerField:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text("Recurrence", style: TextStyle(fontSize: 16)),
                //const SizedBox(height: 8),
                DropdownButtonFormField<RecurrenceType>(
                  value: recurrenceType,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                  ),
                  icon: Icon(Icons.arrow_drop_down),
                  items:
                      RecurrenceType.values.map((type) {
                        return DropdownMenuItem(
                          value: type,
                          child: Text(getRecurrenceText(context, type)),
                        );
                      }).toList(),
                  onChanged: (value) {
                    setState(() => recurrenceType = value!);
                  },
                ),
                const SizedBox(height: 8),
                if (recurrenceType != RecurrenceType.none) ...[
                  const SizedBox(height: 6),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      S.of(context).recurrence_end_datetime,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 180, 180, 180),
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  DatePickerField(
                    selectedDate: endDate,
                    onTap: () async {
                      DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: endDate,
                        firstDate: selectedDate.add(Duration(days: 1)),
                        lastDate: DateTime(
                          userSetupModel!.startDateTime.year + 5,
                          12,
                          31,
                        ),
                      );
                      if (picked != null) {
                        setState(() => endDate = picked);
                      }
                    },
                  ),
                ],
              ],
            ),
            const SizedBox(height: 22),
            Directionality(
              textDirection: TextDirection.ltr,
              child: CustomNumberKeyboard(
                amountController: widget.amountController,
              ),
            ),
            const SizedBox(height: 8),
            ManageFinanceButtons(
              transactionTypeEnum: widget.transactionTypeEnum,
              amountController: widget.amountController,
              titleController: widget.titleController,
              descriptionController: widget.descriptionController,
              financeItemModel: widget.financeItemModel,
              modelDateTime: selectedDate,
              currentDateTime: currentDateTime,
              selectedCategory: selectedCategory,
              isFromHomePage: widget.isFromHomePage,
              categoryFilteredId: widget.categoryFilteredId,
              isAmountPositive: widget.isAmountPositive,
              dateTimeRange: widget.dateTimeRange,
              recurrenceType: recurrenceType,
              endDate: endDate,
            ),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
