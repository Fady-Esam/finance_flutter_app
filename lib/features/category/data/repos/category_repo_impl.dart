import 'package:dartz/dartz.dart';
import 'package:finance_flutter_app/features/category/data/repos/category_repo.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/errors/failure.dart';
import '../models/category_model.dart';

class CategoryRepoImpl implements CategoryRepo {
  @override
  Future<Either<Failure, void>> addCategory(CategoryModel item) async {
    try {
      var box = Hive.box<CategoryModel>('category');
      await box.add(item);
      return right(null);
    } catch (e) {
      return left(Failure(technicalMessage: e.toString()));
    }
  }

  @override
  Either<Failure, List<CategoryModel>> getAllCategories() {
    try {
      var box = Hive.box<CategoryModel>('category');
      return right(box.values.toList());
    } catch (e) {
      return left(Failure(technicalMessage: e.toString()));
    }
  }

  @override
  CategoryModel? getCategoryById(int? categoryId) {
    try {
      var box = Hive.box<CategoryModel>('category');
      return box.get(categoryId);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<int, CategoryModel> getCategoriesByIds(Set<int?> categoryIds) {
    try {
      final box = Hive.box<CategoryModel>('category');
      final Map<int, CategoryModel> categories = {};
      for (final id in categoryIds) {
        if (id != null) {
          final category = box.get(id);
          if (category != null) {
            categories[id] = category;
          }
        }
      }
      return categories;
    } catch (e) {
      return {};
    }
  }
}
