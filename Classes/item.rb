class Item 
  @@current_id = 0
  def initialize(publish_date, archived: false)
    @id = @@current_id
    @publish_date = publish_date
    @archived = archived
    @@current_id += 1
  end

  def add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def add_author(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def add_source(source)
    @source = source
    source.items << self unless source.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end
end
