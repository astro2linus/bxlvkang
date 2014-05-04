require 'i18n'
I18n.default_locale = "zh-CN"

RailsAdmin.config do |config|

  config.main_app_name = ["本溪绿康", "网站管理"]

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  config.authorize_with do
    #redirect_to main_app.root_path unless warden.user.admin?
    # if not current_user
    #   cookies[:return_to] = '/admin'
    #   redirect_to '/users/sign_in', :notice => 'You need to login first.'
    # elsif not current_user.admin?
    #   cookies[:return_to] = '/admin'
    #   redirect_to '/', :notice => 'You need admin role to access admin.'
    # end
  end

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  config.model 'AboutPages' do
    label "关于我们"
    label_plural "关于我们"

    field :headline do
      label "标题"
    end

    field :about_us_header do
      label "关于我们标题" 
    end

    field :about_us_text, :wysihtml5 do
      label "关于我们详细内容"
      config_options :html => true
    end

    field :contact_us_header do
      label "联系我们标题" 
    end

    field :contact_us_text, :wysihtml5 do
      label "联系我们详细内容"
      config_options :html => true
    end

  end

  config.model 'HomeMasterhead' do
    label "主页"
    label_plural "主页"

    field :header_text, :wysihtml5 do
      label "中央标题"
      config_options :html => true
    end
    field :byline_text, :wysihtml5 do
      label "中央副标题"
      config_options :html => true
    end
    field :image do
      label "背景图片"
    end
    field :display do
      label "是否显示"
    end
    field :created_at do
      label "创建时间"
    end
  end

  config.model 'Tablet' do
    label "卡片"
    label_plural "卡片"

    field :headline do
      label "标题"
    end
    field :short_description, :wysihtml5 do
      label "简短描述"
      config_options :html => true
    end
    field :long_description, :wysihtml5 do
      label "详细内容"
      config_options :html => true
    end
    field :display do
      label "显示?"
    end
    field :image do
      label "图片"
    end
    field :order do
      label "顺序"
    end
  end

  config.model 'User' do
    label "用户"
    label_plural "用户"
    field :email do
      label "邮件"
    end
    field :password do
      label "密码"
    end
    field :password_confirmation do
      label "确认密码"
    end
    field :reset_password_sent_at do
      label "密码重置发送"
    end
    field "admin" do
      label "管理员？"
    end
  end

end
