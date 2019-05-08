ActiveAdmin.register Blog do

  # 以下を追加
  permit_params :title, :text

end
