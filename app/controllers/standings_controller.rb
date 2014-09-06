class StandingsController < ApplicationController
  # GET /standings
  # GET /standings.json
  def index
    @standings = Standing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @standings }
    end
  end

  # GET /standings/1
  # GET /standings/1.json
  def show
    @standing = Standing.find(params[:id])

    @pointsArray = [[@standing.player1, @standing.username1],
                    [@standing.player2, @standing.username2],
                    [@standing.player3, @standing.username3],
                    [@standing.player4, @standing.username4],
                    [@standing.player5, @standing.username5],
                    [@standing.player6, @standing.username6],
                    [@standing.player7, @standing.username7],
                    [@standing.player8, @standing.username8],
                    [@standing.player9, @standing.username9],
                    [@standing.player10, @standing.username10],
                    [@standing.player11, @standing.username11],
                    [@standing.player12, @standing.username12],
                    [@standing.player13, @standing.username13],
                    [@standing.player14, @standing.username14],
                    [@standing.player15, @standing.username15],
                    [@standing.player16, @standing.username16],
                    [@standing.player17, @standing.username17],
                    [@standing.player18, @standing.username18],
                    [@standing.player19, @standing.username19],
                    [@standing.player20, @standing.username20],
                    [@standing.player21, @standing.username21],
                    [@standing.player22, @standing.username22],
                    [@standing.player23, @standing.username23],
                    [@standing.player24, @standing.username24],
                    [@standing.player25, @standing.username25],
                    [@standing.player26, @standing.username26],
                    [@standing.player27, @standing.username27],
                    [@standing.player28, @standing.username28],
                    [@standing.player29, @standing.username29],
                    [@standing.player30, @standing.username30]
                   ]

    @pointsArray = @pointsArray.sort_by{|a,b| a}.reverse
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @standing }
    end
  end

  # GET /standings/new
  # GET /standings/new.json
  def new
    @standing = Standing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @standing }
    end
  end

  # GET /standings/1/edit
  def edit
    @standing = Standing.find(params[:id])

    @pointsArray = [[@standing.player1, @standing.username1],
                    [@standing.player2, @standing.username2],
                    [@standing.player3, @standing.username3],
                    [@standing.player4, @standing.username4],
                    [@standing.player5, @standing.username5],
                    [@standing.player6, @standing.username6],
                    [@standing.player7, @standing.username7],
                    [@standing.player8, @standing.username8],
                    [@standing.player9, @standing.username9],
                    [@standing.player10, @standing.username10],
                    [@standing.player11, @standing.username11],
                    [@standing.player12, @standing.username12],
                    [@standing.player13, @standing.username13],
                    [@standing.player14, @standing.username14],
                    [@standing.player15, @standing.username15],
                    [@standing.player16, @standing.username16],
                    [@standing.player17, @standing.username17],
                    [@standing.player18, @standing.username18],
                    [@standing.player19, @standing.username19],
                    [@standing.player20, @standing.username20],
                    [@standing.player21, @standing.username21],
                    [@standing.player22, @standing.username22],
                    [@standing.player23, @standing.username23],
                    [@standing.player24, @standing.username24],
                    [@standing.player25, @standing.username25],
                    [@standing.player26, @standing.username26],
                    [@standing.player27, @standing.username27],
                    [@standing.player28, @standing.username28],
                    [@standing.player29, @standing.username29],
                    [@standing.player30, @standing.username30]
                   ]

    @pointsArray = @pointsArray.sort_by{|a,b| a}.reverse
  end

  # POST /standings
  # POST /standings.json
  def create
    @standing = Standing.new(params[:standing])

    respond_to do |format|
      if @standing.save
        format.html { redirect_to @standing, notice: 'Standing was successfully created.' }
        format.json { render json: @standing, status: :created, location: @standing }
      else
        format.html { render action: "new" }
        format.json { render json: @standing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /standings/1
  # PUT /standings/1.json
  def update
    @standing = Standing.find(params[:id])

    respond_to do |format|
      if @standing.update_attributes(params[:standing])
        format.html { redirect_to @standing, notice: 'Standing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @standing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standings/1
  # DELETE /standings/1.json
  def destroy
    @standing = Standing.find(params[:id])
    @standing.destroy

    respond_to do |format|
      format.html { redirect_to standings_url }
      format.json { head :no_content }
    end
  end
end
