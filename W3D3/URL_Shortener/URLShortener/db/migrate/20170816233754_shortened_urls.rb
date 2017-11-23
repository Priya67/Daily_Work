class ShortenedUrls < ActiveRecord::Migration[5.1]
  attr_accessor :short_url, :long_url
  def change
    create_table :shortened_urls do |t|
      t.string :long_url
      t.string :short_url
      t.integer :user_id
      t.timestamps
    end
    add_index :shortened_urls, :user_id, unique: true
  end

  def self.create_for_user_and_long_url!(user, long_url)
    ShortenedUrl.create!(
      submitter_id: user.id,
      long_url: long_url,
      short_url: ShortenedUrl.random_code
    )
  end

  def self.random_code
    loop do
      code = SecureRandom.urlsafe_base64(16)
      return code unless  ShortenedUrl.exists?(short_url: code)
    end
  end
end
