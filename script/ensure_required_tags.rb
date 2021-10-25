#!/usr/bin/env script/rails runner
# shebang not current working
# see
# https://rails.lighthouseapp.com/projects/8994/tickets/4249-rails-runner-cant-be-used-in-shebang-lines

# run instead as:
# rails runner script/ensure_required_tags.rb
# or
# rails runner -e production script/ensure_required_tags.rb

ArchiveWarning.create_canonical(ArchiveConfig.WARNING_DEFAULT_TAG_NAME)
ArchiveWarning.create_canonical(ArchiveConfig.WARNING_NONE_TAG_NAME)
ArchiveWarning.create_canonical(ArchiveConfig.WARNING_VIOLENCE_TAG_NAME)
ArchiveWarning.create_canonical(ArchiveConfig.WARNING_DEATH_TAG_NAME)
ArchiveWarning.create_canonical(ArchiveConfig.WARNING_ABUSE_TAG_NAME)
ArchiveWarning.create_canonical(ArchiveConfig.WARNING_DRUGS_TAG_NAME)
ArchiveWarning.create_canonical(ArchiveConfig.WARNING_BIGOTRY_TAG_NAME)
ArchiveWarning.create_canonical(ArchiveConfig.WARNING_SELFHARM_TAG_NAME)
ArchiveWarning.create_canonical(ArchiveConfig.WARNING_SUICIDE_TAG_NAME)
ArchiveWarning.create_canonical(ArchiveConfig.WARNING_TORTURE_TAG_NAME)
ArchiveWarning.create_canonical(ArchiveConfig.WARNING_UNREALITY_TAG_NAME)
Rating.create_canonical(ArchiveConfig.RATING_DEFAULT_TAG_NAME, true)
Rating.create_canonical(ArchiveConfig.RATING_MATURE_TAG_NAME, true)
Rating.create_canonical(ArchiveConfig.RATING_TEEN_TAG_NAME, false)
Rating.create_canonical(ArchiveConfig.RATING_GENERAL_TAG_NAME, false)
Category.create_canonical(ArchiveConfig.CATEGORY_HET_TAG_NAME)
Category.create_canonical(ArchiveConfig.CATEGORY_SLASH_TAG_NAME)
Category.create_canonical(ArchiveConfig.CATEGORY_FEMSLASH_TAG_NAME)
Category.create_canonical(ArchiveConfig.CATEGORY_GEN_TAG_NAME)
Category.create_canonical(ArchiveConfig.CATEGORY_MULTI_TAG_NAME)
Category.create_canonical(ArchiveConfig.CATEGORY_OTHER_TAG_NAME)
Media.create_canonical(ArchiveConfig.MEDIA_UNCATEGORIZED_NAME)
Media.create_canonical(ArchiveConfig.MEDIA_NO_TAG_NAME)
Fandom.create_canonical(ArchiveConfig.FANDOM_NO_TAG_NAME)
