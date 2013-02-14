class CreateDocuments < ActiveRecord::Migration
  def up
    create_table 'documents' do |t|
      t.string 'title'
      t.string 'source_url'
      t.text 'body'
      t.timestamps
    end

    create_table 'datasets' do |t|
      t.string 'name'
      t.string 'description'
    end

    create_table 'dataset_labels' do |t|
      t.references :dataset
      t.references :document
      t.string 'label'
    end
  end

  def down
    drop_table'documents'
    drop_table'datasets'
    drop_table'dataset_labels'
  end
end
