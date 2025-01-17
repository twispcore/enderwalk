class ArchiveWarning < Tag
  validates :canonical, presence: { message: "^Only canonical warning tags are allowed." }

  NAME = ArchiveConfig.WARNING_CATEGORY_NAME

  DISPLAY_NAME_MAPPING = {
    ArchiveConfig.WARNING_DEFAULT_TAG_NAME => ArchiveConfig.WARNING_DEFAULT_TAG_DISPLAY_NAME,
    ArchiveConfig.WARNING_NONE_TAG_NAME => ArchiveConfig.WARNING_NONE_TAG_DISPLAY_NAME
  }.freeze

  def self.warning_tags
    Set[ArchiveConfig.WARNING_DEFAULT_TAG_NAME,
        ArchiveConfig.WARNING_NONE_TAG_NAME,
        ArchiveConfig.WARNING_ABUSE_TAG_NAME,
        ArchiveConfig.WARNING_DRUGS_TAG_NAME,
        ArchiveConfig.WARNING_BIGOTRY_TAG_NAME,
        ArchiveConfig.WARNING_VIOLENCE_TAG_NAME,
        ArchiveConfig.WARNING_DEATH_TAG_NAME,
        ArchiveConfig.WARNING_SELFHARM_TAG_NAME,
        ArchiveConfig.WARNING_SUICIDE_TAG_NAME,
        ArchiveConfig.WARNING_TORTURE_TAG_NAME,
        ArchiveConfig.WARNING_UNREALITY_TAG_NAME]
  end

  def self.warning?(warning)
    warning_tags.include? warning
  end

  def self.label_name
    "Warnings"
  end

  def display_name
    DISPLAY_NAME_MAPPING[name] || name
  end
end
