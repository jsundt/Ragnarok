class ObjectVariants::Buttons

  def initialize()
  end

  def variants
    [
      {
        name: 'Primary',
        variant_class: '',
      },
      {
        name: 'Silver',
        variant_class: 'btn--silver',
      },
      {
        name: 'Beta 115',
        variant_class: 'btn--beta-115',
      },
      {
        name: 'Success',
        variant_class: 'btn--success',
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
