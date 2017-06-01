require 'rails_helper'

describe CategoriesController do
  let!(:category) {Category.create!({name: "Romance"})}

  describe "Get #index" do
    it "responds with a status code of 200" do
      get :index
      expect(response).to have_http_status 200
    end

    it "assigns all categories as @categories" do
      get :index
      expect(assigns(:categories)).to eq(Category.all)
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "get #show" do
    it "responds with a status code of 200" do
      get :show, {id: category.id}
      expect(response).to have_http_status 200
    end

    it "assigns the correct category as @category" do
      get :show, {id: category.id}
      expect(assigns(:category)).to eq(category)
    end

    it "renders the :show template" do
      get :show, {id: category.id}
      expect(response).to render_template(:show)
    end
  end
end
