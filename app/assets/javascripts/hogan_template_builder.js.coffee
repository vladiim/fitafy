class window.HoganTemplateBuilder

  render: (template_path, data) =>
    HoganTemplates[template_path].render data