require 'helper'


describe Elibri::ONIX::Dict::CoverType do

  it "should be able to find most similar dict entry with specified string" do
    #assert_equal 'miękka', Elibri::ONIX::Dict::CoverType.most_similar_to('mietka').name
    #assert_equal 'miękka ze skrzydełkami', Elibri::ONIX::Dict::CoverType.most_similar_to('skrzydełkowa').name
    #assert_equal 'skórzana', Elibri::ONIX::Dict::CoverType.most_similar_to('skórkowa').name
    #assert_equal 'twarda', Elibri::ONIX::Dict::CoverType.most_similar_to('karton').name
  end

  it "should be able to return product_form and product_form_detail" do
    c1 = Elibri::ONIX::Dict::CoverType.find(1)
    assert_equal "foam", c1.key
    assert_equal "BP", c1.product_form
    assert_nil c1.product_form_detail

    c2 = Elibri::ONIX::Dict::CoverType.find(9)
    assert_equal "hardcover_with_dust_jacket", c2.key
    assert_equal "BB", c2.product_form
    assert_equal "B501", c2.product_form_detail
  end

  it "should properly recognize cover types" do
    assert_equal "foam", Elibri::ONIX::Dict::CoverType.determine_cover_type("BP", nil)
    assert_equal "paperback", Elibri::ONIX::Dict::CoverType.determine_cover_type("BC", nil)
    assert_equal "paperback_with_flaps", Elibri::ONIX::Dict::CoverType.determine_cover_type("BC", "B504")
    assert_equal "plastic", Elibri::ONIX::Dict::CoverType.determine_cover_type("BB", "B413")
    assert_equal "leather", Elibri::ONIX::Dict::CoverType.determine_cover_type("BG", nil)
    assert_equal "hardcover", Elibri::ONIX::Dict::CoverType.determine_cover_type("BB", nil)
    assert_equal "laminated_hardcover", Elibri::ONIX::Dict::CoverType.determine_cover_type("BB", "B415")
    assert_equal "hardcover_with_dust_jacket", Elibri::ONIX::Dict::CoverType.determine_cover_type("BB", "B501")
    assert_equal "flexibound", Elibri::ONIX::Dict::CoverType.determine_cover_type("BC", "B412")

    #nieznana kombinacja
    assert_nil Elibri::ONIX::Dict::CoverType.determine_cover_type("BF", nil)
  end
end
