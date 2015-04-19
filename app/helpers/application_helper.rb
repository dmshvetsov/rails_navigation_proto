module ApplicationHelper
  def menu(tree, options = {})
    return unless tree
    proc do |menu|
      menu.dom_class = options[:ul_class]
      tree.each do |page, childs|
        menu.item(
          :nav, page.title, admin_tree_path(page), class: options[:li_class],
          link: { class: options[:a_class] },
          &menu(childs, options)
        )
      end
    end
  end
end
