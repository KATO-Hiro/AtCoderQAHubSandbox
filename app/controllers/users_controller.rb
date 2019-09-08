class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name],
      password: params[:password],
      atcoder_id: params[:atcoder_id]
    )

    if @user.save
      flash[:notice] = "Create your account!"
      redirect_to("/users/#{@user.id}")
    else
      ## 失敗
      ### 新規登録画面を表示
    end
  end

  def edit
    # ユーザーidを取得
  end

  def update
    # ユーザーidを取得
    # 名前・パスワード・AtCoder IDを取得

    # 保存
    ## 成功
    ### flashを表示
    ### ユーザー一覧を表示
    ## 失敗
    ### 編集画面を表示
  end

  def destroy
    # ユーザーidを取得
    # 削除
    ## flashを表示
  end
end
