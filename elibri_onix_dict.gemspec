# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{elibri_onix_dict}
  s.version = "0.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcin Urbanski"]
  s.date = %q{2012-04-05}
  s.description = %q{EDItEUR ONIX format dictionary helpers used in eLibri publication system}
  s.email = %q{marcin@urbanski.vdl.pl}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "elibri_onix_dict.gemspec",
    "lib/elibri_onix_dict.rb",
    "lib/elibri_onix_dict/onix_3_0/base.rb",
    "lib/elibri_onix_dict/onix_3_0/serialized/AudienceRangePrecision.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/AudienceRangeQualifier.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/Availability.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/CollectionType.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ContentAudience.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ContentSourceType.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ContributorRole.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/DateFormat.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/EpubTechnicalProtection.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ExtentType.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ExtentUnit.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/LanguageCode.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/LanguageRole.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/MeasureType.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/NotificationType.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/OtherTextType.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/PricePrintedOnProduct.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/PriceTypeCode.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ProductAvailabilityType.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ProductFormCode.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ProductFormDetail.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ProductIDType.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ProductRelationType.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/PublishingDateRole.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/PublishingStatusCode.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ResourceContentType.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ResourceForm.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/ResourceMode.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/SalesRestrictionType.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/SubjectSchemeIdentifier.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/SupplierRole.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/TitleElementLevel.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/TitleType.yml",
    "lib/elibri_onix_dict/onix_3_0/serialized/UnnamedPersons.yml",
    "lib/elibri_onix_dict/releases.rb",
    "lib/elibri_onix_dict/version.rb",
    "test/elibri_onix_dict_release_3_0_test.rb",
    "test/elibri_onix_dict_test.rb",
    "test/helper.rb"
  ]
  s.homepage = %q{http://github.com/elibri/elibri_onix_dict}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{EDItEUR ONIX format dictionary helpers used in eLibri publication system}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

