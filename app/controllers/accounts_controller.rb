class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.where(user_id = session[:user_id])
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
    @thisAccount = Account.find(params[:id])

    @readyQuests = Quest.where('attack <= ?', @thisAccount.attack)
    .where('strength <= ?', @thisAccount.strength)
    .where('defence <= ?', @thisAccount.defence)
    .where('ranged <= ?', @thisAccount.ranged)
    .where('prayer <= ?', @thisAccount.prayer)
    .where('magic <= ?', @thisAccount.magic)
    .where('runecrafting <= ?', @thisAccount.runecrafting)
    .where('construction <= ?', @thisAccount.construction)
    .where('hitpoints <= ?', @thisAccount.hitpoints)
    .where('agility <= ?', @thisAccount.agility)
    .where('herblore <= ?', @thisAccount.herblore)
    .where('thieving <= ?', @thisAccount.thieving)
    .where('crafting <= ?', @thisAccount.crafting)
    .where('fletching <= ?', @thisAccount.fletching)
    .where('slayer <= ?', @thisAccount.slayer)
    .where('hunter <= ?', @thisAccount.hunter)
    .where('mining <= ?', @thisAccount.mining)
    .where('smithing <= ?', @thisAccount.smithing)
    .where('fishing <= ?', @thisAccount.fishing)
    .where('cooking <= ?', @thisAccount.cooking)
    .where('firemaking <= ?', @thisAccount.firemaking)
    .where('woodcutting <= ?', @thisAccount.woodcutting)

    @notReadyQuests = Quest.where('attack >= ?', @thisAccount.attack)
    .where('strength > ?', @thisAccount.strength)
    .where('defence > ?', @thisAccount.defence)
    .where('ranged > ?', @thisAccount.ranged)
    .where('prayer > ?', @thisAccount.prayer)
    .where('magic > ?', @thisAccount.magic)
    .where('runecrafting > ?', @thisAccount.runecrafting)
    .where('construction > ?', @thisAccount.construction)
    .where('hitpoints > ?', @thisAccount.hitpoints)
    .where('agility > ?', @thisAccount.agility)
    .where('herblore > ?', @thisAccount.herblore)
    .where('thieving > ?', @thisAccount.thieving)
    .where('crafting > ?', @thisAccount.crafting)
    .where('fletching > ?', @thisAccount.fletching)
    .where('slayer > ?', @thisAccount.slayer)
    .where('hunter > ?', @thisAccount.hunter)
    .where('mining > ?', @thisAccount.mining)
    .where('smithing > ?', @thisAccount.smithing)
    .where('fishing > ?', @thisAccount.fishing)
    .where('cooking > ?', @thisAccount.cooking)
    .where('firemaking > ?', @thisAccount.firemaking)
    .where('woodcutting > ?', @thisAccount.woodcutting)
  end

  # GET /accounts/new
  def new
    @account = Account.new
  end

  # GET /accounts/1/edit
  def edit
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = Account.new(account_params)

    respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'Account was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:attack, :strength, :defence, :ranged, :prayer, :magic, :runecrafting, :construction, :hitpoints, :agility, :herblore, :thieving, :crafting, :fletching, :slayer, :hunter, :mining, :smithing, :fishing, :cooking, :firemaking, :woodcutting, :farming, :username)
    end
end
