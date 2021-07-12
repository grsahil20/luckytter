class SaveUser < User::SaveOperation
  permit_columns name
end
