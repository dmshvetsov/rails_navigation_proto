module ApplicationHelper
  # block that renders dynamic navigation
  def main_menu(tree = nil)
    tree = Section.find_by(slug: 'en').try(:hash_tree) unless tree
    if tree
      proc do |menu|
        tree.each do |section, childs| 
          menu.item :section, section.title, section_url(section), {}, &main_menu(childs) if childs
        end
      end
    end
  end
end
