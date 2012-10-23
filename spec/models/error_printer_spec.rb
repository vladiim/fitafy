require_relative '../spec_helper_lite'
require_relative '../../app/models/error_printer'

class ErrorPrinter

  def content_tag(something) ; end
end

describe ErrorPrinter do

  let(:error_object) { OpenStruct.new errors: true }

  describe "#initialize" do
  	let(:result) { ErrorPrinter.new(error_object) }

    context "object has errors" do
      before { mock(error_object).errors { true } }

      it "lists the errors" do
      	result.should be
      end
    end

    context "object hasn't got errors" do
      before { mock(error_object).errors { false } }

      it "raises an error" do
      	-> { result }.should raise_error RuntimeError
      end
    end
  end

  describe "#generate_error_list" do
  	let(:error_printer) { ErrorPrinter.new error_object }
    let(:errors)        { { error: "error details" } }
    let(:result)        { error_printer.generate_error_list }

    it "renders a ul tag" do
      mock(error_printer).content_tag(:ul) { "UNORDERED LIST" }
      result.should eq "UNORDERED LIST"
    end

    it "generates li items for each error" do
      mock(error_object).errors { errors }
      mock(error_printer).generate_error_item { "ERROR ITEM" }
      result.should eq "ERROR ITEM"
    end
  end

  describe "#generate_error_item" do
  	
  end
end