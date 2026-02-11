#!/usr/bin/env ruby
#
# Check for changed posts

Jekyll::Hooks.register :posts, :post_init do |post|
  begin
    commit_num = `git rev-list --count HEAD "#{ post.path }"`.to_i

    if commit_num > 1
      lastmod_date = `git log -1 --pretty="%ad" --date=iso "#{ post.path }"`.strip
      post.data['last_modified_at'] = lastmod_date
    end
  rescue Errno::ENOENT
    # git command not available; skip setting last_modified_at
  end
end
