require 'minitest/autorun'
require 'liquid'
require 'al_comments'

class AlCommentsRenderingTest < Minitest::Test
  Site = Struct.new(:config)

  def render_comments(config:, page:)
    template = Liquid::Template.parse('{% al_comments %}')
    template.render({}, registers: { site: Site.new(config), page: page })
  end

  def test_giscus_renders_when_repo_is_configured
    output = render_comments(
      config: {
        'max_width' => '930px',
        'enable_darkmode' => true,
        'giscus' => {
          'repo' => 'alshedivat/al-folio',
          'repo_id' => 'repo-id',
          'category' => 'Comments',
          'category_id' => 'category-id',
          'mapping' => 'title',
          'strict' => 1,
          'reactions_enabled' => 1,
          'emit_metadata' => 0,
          'input_position' => 'bottom',
          'lang' => 'en',
          'light_theme' => 'light',
          'dark_theme' => 'dark'
        }
      },
      page: { 'layout' => 'post', 'giscus_comments' => true }
    )

    assert_includes output, 'https://giscus.app/client.js'
    refute_includes output, 'giscus comments misconfigured'
  end

  def test_giscus_uses_repository_fallback
    output = render_comments(
      config: {
        'repository' => 'alshedivat/al-folio',
        'giscus' => { 'category' => 'Comments' }
      },
      page: { 'giscus_comments' => true }
    )

    assert_includes output, 'https://giscus.app/client.js'
    refute_includes output, 'giscus comments misconfigured'
  end

  def test_disqus_renders_with_shortname
    output = render_comments(
      config: { 'disqus_shortname' => 'al-folio' },
      page: { 'title' => 'Post title', 'id' => '/blog/post', 'disqus_comments' => true }
    )

    assert_includes output, 'id="disqus_thread"'
    assert_includes output, '.disqus.com/embed.js'
  end
end
