class ProjectsController < ApplicationController

  before_action :set_list, only: [:show]

  def show
  end

  def index
  end

  def new
  end

  def edit
  end

  def soretec
    @projects = Project.where(name: 'soretec')
  end

  def set_list
    @db_constants = YAML.load_file(Rails.root.join('config', 'constants.yml'))
    @list = @db_constants['projects'].keys
  end
end
