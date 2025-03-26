class HostsController < ApplicationController
  before_action :set_host, only: %i[ show edit update destroy ]

  # GET /hosts or /hosts.json
  def index
    @hosts = Host.all
  end

  # GET /hosts/1 or /hosts/1.json
  def show
  end

  # GET /hosts/new
  def new
    @host = Host.new
    @host.build_game
  end

  # GET /hosts/1/edit
  def edit
  end

  # POST /hosts or /hosts.json
  def create
    @host = Host.new(host_params)

    respond_to do |format|
      if @host.save
        format.html { redirect_to game_play_path(game_id: @host.game.id) }
        format.json { render :show, status: :created, location: @host }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @host.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hosts/1 or /hosts/1.json
  def update
    respond_to do |format|
      if @host.update(host_params)
        format.html { redirect_to @host, notice: "Host was successfully updated." }
        format.json { render :show, status: :ok, location: @host }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @host.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hosts/1 or /hosts/1.json
  def destroy
    @host.destroy!

    respond_to do |format|
      format.html { redirect_to hosts_path, status: :see_other, notice: "Host was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_host
      @host = Host.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def host_params
      params.require(:host).permit(
        :name,
        game_attributes: [ :id, :name ] # Permit nested game attributes
      )
    end
end
