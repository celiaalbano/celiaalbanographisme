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

  def archil
    @projects = Project.where(name: 'archil')
  end

  def dmum
    @projects = Project.where(name: 'dmum')
  end

  def ose
    @projects = Project.where(name: 'ose')
  end

  def fermepc
    @projects = Project.where(name: 'fermepc')
  end

  def equiperle
    @projects = Project.where(name: 'equiperle')
  end

  def pelemele
    @projects = Project.where(name: 'pelemele')
  end

  def set_list
    @db_constants = YAML.load_file(Rails.root.join('config', 'constants.yml'))
    @list = @db_constants['projects'].keys
  end
end
