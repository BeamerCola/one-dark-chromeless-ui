describe "One Dark UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('one-dark-chromeless-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('one-dark-chromeless-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('one-dark-chromeless-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the layout mode to be set via config", ->
    expect(document.documentElement.getAttribute('theme-one-dark-chromeless-ui-layoutmode')).toBe 'auto'

    atom.config.set('one-dark-chromeless-ui.layoutMode', 'Spacious')
    expect(document.documentElement.getAttribute('theme-one-dark-chromeless-ui-layoutmode')).toBe 'spacious'
