class ObjectVariants::Buttons

  def initialize()
  end

  def variants
    [
      {
        name: 'Primary',
        class: '',
      },
      {
        name: 'Silver',
        class: 'btn--silver',
      },
      {
        name: 'Beta 115',
        class: 'btn--beta-115',
      },
      {
        name: 'Success',
        class: 'btn--success',
      },
    ]
  end

  def hover_variants
    [
      {
        name: 'To Danger',
        class: 'btn--to-danger',
      },
    ]
  end

end
