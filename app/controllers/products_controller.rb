# -*- coding: utf-8 -*-

class ProductsController < ApplicationController
  respond_to :html, :json

  before_filter :find_product, only: [:destroy, :edit, :show, :update]

  # POST /products
  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:notice] = "Product successfully created"
      respond_with(@product)
    else
      render :new
    end
  end

  # DELETE /products/1
  def destroy
    flash[:notice] = "Product successfully destroyed." if @product.destroy
    respond_with(@product, location: products_path)
  end

  # GET /products/1/edit
  def edit
    respond_with(@product) do |format|
      format.html { render action: :edit }
    end
  end

  # GET /products
  def index
    respond_with(@products = Product.all)
  end

  # GET /products/new
  def new
    respond_with(@product = Product.new)
  end

  # GET /products/1
  def show
    respond_with(@product)
  end

  # PUT /products/1
  def update
    if @product.update_attributes(params[:product])
      flash[:notice] = "Product successfully updated."
      respond_with(@product)
    else
      render :edit
    end
  end

private

  def find_product
    @product = Product.find(params[:id])
  end
end
