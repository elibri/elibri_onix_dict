#encoding: UTF-8
require 'helper'



describe Elibri::ONIX::Dict::Release_3_0 do

  it "should be able to build classes on the fly from .yml files" do
    assert_equal 19, Elibri::ONIX::Dict::Release_3_0::ProductFormCode::ALL.size
    assert_equal 17, Elibri::ONIX::Dict::Release_3_0::ProductFormCode.all_except('BA', 'EA').size
    assert_equal 'BA', Elibri::ONIX::Dict::Release_3_0::ProductFormCode::BOOK
    assert_equal '27', Elibri::ONIX::Dict::Release_3_0::PublishingDateRole::PREORDER_EMBARGO_DATE

    form = Elibri::ONIX::Dict::Release_3_0::ProductFormCode.find_by_onix_code('BA')
    assert_equal 'książka', form.name 
    assert_equal 'book', form.name(:en)
    assert_equal 'BA', form.onix_code
    assert_equal "druk", form.carrier
    assert form.mandatory_isbn

    assert !form.digital
    assert !form.digital?

    form = Elibri::ONIX::Dict::Release_3_0::ProductFormCode.find_by_onix_code('OPEN_ACCESS')

    assert !form.digital?

    assert_raises NoMethodError do 
      form.physical
    end

    assert_raises NoMethodError do
      form.physical? 
    end
  end


end
