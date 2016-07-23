require 'test_helper'

class QuestsControllerTest < ActionController::TestCase
  setup do
    @quest = quests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quest" do
    assert_difference('Quest.count') do
      post :create, quest: { agility: @quest.agility, attack: @quest.attack, construction: @quest.construction, cooking: @quest.cooking, crafting: @quest.crafting, defence: @quest.defence, farming: @quest.farming, firemaking: @quest.firemaking, fishing: @quest.fishing, fletching: @quest.fletching, herblore: @quest.herblore, hitpoints: @quest.hitpoints, hunter: @quest.hunter, magic: @quest.magic, mining: @quest.mining, name: @quest.name, prayer: @quest.prayer, ranged: @quest.ranged, runecrafting: @quest.runecrafting, slayer: @quest.slayer, smithing: @quest.smithing, strength: @quest.strength, thieving: @quest.thieving, url: @quest.url, woodcutting: @quest.woodcutting }
    end

    assert_redirected_to quest_path(assigns(:quest))
  end

  test "should show quest" do
    get :show, id: @quest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quest
    assert_response :success
  end

  test "should update quest" do
    patch :update, id: @quest, quest: { agility: @quest.agility, attack: @quest.attack, construction: @quest.construction, cooking: @quest.cooking, crafting: @quest.crafting, defence: @quest.defence, farming: @quest.farming, firemaking: @quest.firemaking, fishing: @quest.fishing, fletching: @quest.fletching, herblore: @quest.herblore, hitpoints: @quest.hitpoints, hunter: @quest.hunter, magic: @quest.magic, mining: @quest.mining, name: @quest.name, prayer: @quest.prayer, ranged: @quest.ranged, runecrafting: @quest.runecrafting, slayer: @quest.slayer, smithing: @quest.smithing, strength: @quest.strength, thieving: @quest.thieving, url: @quest.url, woodcutting: @quest.woodcutting }
    assert_redirected_to quest_path(assigns(:quest))
  end

  test "should destroy quest" do
    assert_difference('Quest.count', -1) do
      delete :destroy, id: @quest
    end

    assert_redirected_to quests_path
  end
end
