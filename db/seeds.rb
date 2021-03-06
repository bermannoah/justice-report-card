state = State.create(name: "Colorado")

hate_crimes_desc = "All residents and visitors have a right to be free from bias-motivated threats, intimidation, and coercion. They should be free to use public parks and transportation, walk on public streets, attend school, live peacefully, and enjoy other basic rights without being victims of harassment or crime. If harassment or crime does occur, individuals should have legal recourse against perpetrators, access to support and services to help them navigate the legal process, and access to support and services to address the emotional and financial consequences of the offense. Communities should also have processes in place for collecting data about incidents and prevalence of these crimes, evidence of a court system that takes these offenses seriously, and civic education programs in place to encourage inclusivity and tolerance, thus preventing such offenses in the first place."
category_desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio."
subcategory_desc = "Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia."

hate_crimes = Issue.create(title: "Bias-Motivated Harassment and Crime", description: hate_crimes_desc)

protected_classes = hate_crimes.categories.create(title: "Protected Classes", description: category_desc)
  protected_classes.subcategories.create(title: "Sexual Orientation", description: subcategory_desc)
  protected_classes.subcategories.create(title: "Gender Identity", description: subcategory_desc)
  protected_classes.subcategories.create(title: "Religion", description: subcategory_desc)
  protected_classes.subcategories.create(title: "National Origin", description: subcategory_desc)
documentation = hate_crimes.categories.create(title: "Documentation", description: category_desc)
  documentation.subcategories.create(title: "Reporting", description: subcategory_desc)
  documentation.subcategories.create(title: "Collection", description: subcategory_desc)
prosecution_harass = hate_crimes.categories.create(title: "Prosecution of Harassment", description: category_desc)
  prosecution_harass.subcategories.create(title: "General", description: subcategory_desc)
prosecution_crime = hate_crimes.categories.create(title: "Prosecution of Crime", description: category_desc)
  prosecution_crime.subcategories.create(title: "General", description: subcategory_desc)
victim_support = hate_crimes.categories.create(title: "Victim Support", description: category_desc)
  victim_support.subcategories.create(title: "LGBTQ", description: subcategory_desc)
  victim_support.subcategories.create(title: "Muslim", description: subcategory_desc)
  victim_support.subcategories.create(title: "Jewish", description: subcategory_desc)
  victim_support.subcategories.create(title: "Religious - Other", description: subcategory_desc)
  victim_support.subcategories.create(title: "Immigrants", description: subcategory_desc)
  victim_support.subcategories.create(title: "Race", description: subcategory_desc)
key_allies = hate_crimes.categories.create(title: "Key Allies", description: category_desc)
  key_allies.subcategories.create(title: "Attorney General", description: subcategory_desc)
  key_allies.subcategories.create(title: "Local Prosecutors", description: subcategory_desc)
anti_bias_curriculum = hate_crimes.categories.create(title: "Anti-Bias Curriculum in Schools", description: category_desc)
  anti_bias_curriculum.subcategories.create(title: "General", description: subcategory_desc)
ngos = hate_crimes.categories.create(title: "Non-Governmental Leadership", description: category_desc)
  ngos.subcategories.create(title: "Anti-Defamation League", description: subcategory_desc)
  ngos.subcategories.create(title: "LGBTQ Advocacy", description: subcategory_desc)
  ngos.subcategories.create(title: "Immigrant Advocacy Organizations", description: subcategory_desc)

hate_crimes.legislations.create(title: "Legislation Example 1", description: "tbd", link: "www.example_1.com", level: "state", state_id: state.id)
hate_crimes.legislations.create(title: "Legislation Example 2", description: "tbd", link: "www.example_2.com", level: "state", state_id: state.id)
hate_crimes.legislations.create(title: "Legislation Example 3", description: "tbd", link: "www.example_3.com", level: "state", state_id: state.id)

Subcategory.all.each do |subcategory|
  SubcategoryScore.create(subcategory_id: subcategory.id,
                          state_id: state.id,
                          score: [1,2,3,4,5].sample)
end
