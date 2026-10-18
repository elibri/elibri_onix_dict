#encoding: UTF-8
require 'helper'



describe Elibri::ONIX::Dict::Release_3_0 do

  it "should be able to build classes on the fly from .yml files" do
    assert_equal 17, Elibri::ONIX::Dict::Release_3_0::ProductFormCode::ALL.size
    assert_equal 15, Elibri::ONIX::Dict::Release_3_0::ProductFormCode.all_except('BA', 'EA').size
    assert_equal 'BA', Elibri::ONIX::Dict::Release_3_0::ProductFormCode::BOOK
    assert_equal '27', Elibri::ONIX::Dict::Release_3_0::PublishingDateRole::PREORDER_EMBARGO_DATE

    assert_equal '16', Elibri::ONIX::Dict::Release_3_0::NameIdentifierType::ISNI
    assert_equal '31', Elibri::ONIX::Dict::Release_3_0::NameIdentifierType::VIAF
    assert_equal 'ISNI', Elibri::ONIX::Dict::Release_3_0::NameIdentifierType.find_by_onix_code('16').name(:en)
    assert_equal 'VIAF ID', Elibri::ONIX::Dict::Release_3_0::NameIdentifierType.find_by_onix_code('31').name(:en)

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


  it "should keep finishings apart from file formats" do
    finishing = Elibri::ONIX::Dict::Release_3_0::Finishing

    assert_equal 14, finishing::ALL.size
    assert_equal 'B419', finishing::DECORATED_PAGE_EDGES
    assert_equal 'kapitałka', finishing.find_by_onix_code('B407').name
    assert_equal 'head and tail bands', finishing.find_by_onix_code('B407').name(:en)

    assert_nil Elibri::ONIX::Dict::Release_3_0::ProductFormDetail.find_by_onix_code('B419')
  end


  it "should list packaging types of a physical product" do
    packaging = Elibri::ONIX::Dict::Release_3_0::ProductPackaging

    assert_equal 8, packaging::ALL.size
    assert_equal '12', packaging::TUBE
    assert_equal 'tuba (np. mapa, plakat)', packaging.find_by_onix_code('12').name
    assert_equal 'Slip-cased set', packaging.find_by_onix_code('11').name(:en)
  end


end
