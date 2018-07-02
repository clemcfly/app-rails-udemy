require 'test_helper'

class MiseEnPageTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "mise_en_page links" do
    get root_path
    assert_template "statique/accueil"
    assert_select "a[href=?]", services_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", team_path
    assert_select "a[href=?]", root_path, count: 2; #celui du logo
  end
end
