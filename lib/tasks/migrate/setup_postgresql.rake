desc 'GitLab | Sets up PostgreSQL'
task setup_postgresql: :environment do
  require Rails.root.join('db/migrate/20151007120511_namespaces_projects_path_lower_indexes')
  require Rails.root.join('db/migrate/20151008110232_add_users_lower_username_email_indexes')
  require Rails.root.join('db/migrate/20161212142807_add_lower_path_index_to_routes')
  require Rails.root.join('db/migrate/20170317203554_index_routes_path_for_like')
  require Rails.root.join('db/migrate/20170724214302_add_lower_path_index_to_redirect_routes')
  require Rails.root.join('db/migrate/20170503185032_index_redirect_routes_path_for_like')
  require Rails.root.join('db/migrate/20171220191323_add_index_on_namespaces_lower_name.rb')
  require Rails.root.join('db/migrate/20180113220114_rework_redirect_routes_indexes.rb')
  require Rails.root.join('db/migrate/20180215181245_users_name_lower_index.rb')

  NamespacesProjectsPathLowerIndexes.new.up
  AddUsersLowerUsernameEmailIndexes.new.up
  AddLowerPathIndexToRoutes.new.up
  IndexRoutesPathForLike.new.up
  AddLowerPathIndexToRedirectRoutes.new.up
  IndexRedirectRoutesPathForLike.new.up
  AddIndexOnNamespacesLowerName.new.up
  ReworkRedirectRoutesIndexes.new.up
  UsersNameLowerIndex.new.up
end
