class AddNameToUsersTable::V20210701061030 < Avram::Migrator::Migration::V1
  def migrate
    alter table_for(User) do
      add name : String, fill_existing_with: :email
    end
    # Read more on migrations
    # https://www.luckyframework.org/guides/database/migrations
    #
    # create table_for(Thing) do
    #   primary_key id : Int64
    #   add_timestamps
    #
    #   add title : String
    #   add description : String?
    # end

    # UserQuery.new.each do |user|
    #   SaveUser.update!(user, name: user.email.split("@")[0])
    # end

    # Run custom SQL with execute
    #
    # execute "CREATE UNIQUE INDEX things_title_index ON things (title);"
  end

  def rollback
    alter table_for(User) do
      remove :name
    end
  end
end
