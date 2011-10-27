require 'helper'



describe Elibri::ONIX::Dict::Release_3_0 do

  it "should be able to build classes on the fly from .yml files" do
    assert_equal 11, Elibri::ONIX::Dict::Release_3_0::ProductFormCode::ALL.size
    assert_equal 9, Elibri::ONIX::Dict::Release_3_0::ProductFormCode.all_except('BA', 'EA').size
    assert_equal 9, Elibri::ONIX::Dict::Release_3_0::ProductFormCode.all_except(['BA', 'EA']).size
    assert_equal 'BA', Elibri::ONIX::Dict::Release_3_0::ProductFormCode::BOOK

    form = Elibri::ONIX::Dict::Release_3_0::ProductFormCode.find_by_onix_code('BA')
    assert_equal 'książka', form.name 
    assert_equal 'book', form.name(:en)
    assert_equal 'BA', form.onix_code
  end


end
