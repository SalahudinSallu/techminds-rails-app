# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password',
                    password_confirmation: 'password')
end

home = Home.create!(title: 'Rem nihil molestiae',
                    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate v elit esse cillum dolore eu fugiat nulla pariatur.')

home.image.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/Mask group.png')),
  filename: 'Mask group.png'
)

about = About.create(
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate v elit esse cillum dolore eu fugiat nulla pariatur.',
  project_completed_count: 780,
  happy_clients_count: 220,
  title_one: 'Web Development',
  description_one: '220+ Web Completed',
  title_two: 'App Development',
  description_two: '360+ App Completed',
  title_three: 'SEO',
  description_three: '320+ Web Completed',
  title_four: 'Digital Marketing',
  description_four: 'yourmail@gmail.com'
)
about.icon_one.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/web-dev-sm.png')),
  filename: 'web-dev-sm.png'
)
about.icon_two.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/app-dev-sm.png')),
  filename: 'app-dev-sm.png'
)
about.icon_three.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/digital-marketing-sm.png')),
  filename: 'digital-marketing-sm.png'
)
about.icon_four.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/seo-sm.png')),
  filename: 'seo-sm.png'
)
about.diamond_icon.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/diamond.svg')),
  filename: 'diamond.svg'
)

service = Service.create(description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.')

service_item = ServiceItem.create(title: 'MOBILE APP DEVELOPMENT',
                                  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing incididunt ut labore.', service:)
service_item.icon.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/app-dev-lg.svg')),
  filename: 'app-dev-lg.svg'
)

portfolio = Portfolio.create(description: 'Perfect solution for digital experience')

project = PortfolioItem.create(title: 'DIGITAL MARKETING', description: 'Transforming & Modeling Data',
                               portfolio:)
project.image.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/project-1.png')),
  filename: 'project-1.png'
)

team = Team.create(description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut.')

member = Member.create(name: 'Lorem ipsum', role: 'Manager', location: 'Lahore, Pakistan', team:)

member.image.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/member-1.png')),
  filename: 'member-1.png'
)

Contact.create(location: '47 Abdussalam street Maple ON, L6A3A8 Canada', email: 'yourmail@gmail.com',
               phone: '+00 111 222 3333', latitude: '31.48109041354171', longitude: '74.31495667033114')
