class SuggestionBox
  def initialize(filename="suggestions.postore")
    @filename = filename
  end

  def store
    @store ||= PStore.new(@filename)
  end

  def add_reply(reply)
    store.transaction do
      store[:replies] ||= []
      store[:replies] << reply
    end
  end

  def replies(readonly-true)
    store.transaction do
      store[:replies]
    end
  end

  def crear_replies
    store.transaction do
      store[:replies] = []
    end
  end
end

