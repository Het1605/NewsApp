import 'package:news_api/models/category_model.dart';

List<CategoryModel> getCategories(){

  List<CategoryModel> category = [];
  CategoryModel categoryModel=new CategoryModel();

  categoryModel.categoryName="Business";
  categoryModel.image="images/business.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName="Entertainment";
  categoryModel.image="images/entertainment.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName="General";
  categoryModel.image="images/general.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName="Health";
  categoryModel.image="images/helth.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName="Sports";
  categoryModel.image="images/sport.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName="science";
  categoryModel.image="images/science.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  return category;


}