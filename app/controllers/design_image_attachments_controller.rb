class DesignImageAttachmentsController < ApplicationController
  before_action :set_design_image_attachment, only: [:show, :edit, :update, :destroy]

  # GET /design_image_attachments
  # GET /design_image_attachments.json
  def index
    @design_image_attachments = DesignImageAttachment.all
  end

  # GET /design_image_attachments/1
  # GET /design_image_attachments/1.json
  def show
  end

  # GET /design_image_attachments/new
  def new
    @design_image_attachment = DesignImageAttachment.new
  end

  # GET /design_image_attachments/1/edit
  def edit
  end

  # POST /design_image_attachments
  # POST /design_image_attachments.json
  def create
    @design_image_attachment = DesignImageAttachment.new(design_image_attachment_params)

    respond_to do |format|
      if @design_image_attachment.save
        format.html { redirect_to @design_image_attachment, notice: 'Design image attachment was successfully created.' }
        format.json { render :show, status: :created, location: @design_image_attachment }
      else
        format.html { render :new }
        format.json { render json: @design_image_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /design_image_attachments/1
  # PATCH/PUT /design_image_attachments/1.json
  def update
    respond_to do |format|
      if @design_image_attachment.update(design_image_attachment_params)
        format.html { redirect_to @design_image_attachment, notice: 'Design image attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @design_image_attachment }
      else
        format.html { render :edit }
        format.json { render json: @design_image_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /design_image_attachments/1
  # DELETE /design_image_attachments/1.json
  def destroy
    @design_image_attachment.destroy
    respond_to do |format|
      format.html { redirect_to design_image_attachments_url, notice: 'Design image attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design_image_attachment
      @design_image_attachment = DesignImageAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def design_image_attachment_params
      params.require(:design_image_attachment).permit(:image)
    end
end
