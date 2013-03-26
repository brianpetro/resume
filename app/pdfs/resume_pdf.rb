include ActionView::Helpers::SanitizeHelper
class ResumePdf < Prawn::Document

	def initialize(entries)
		super(top_margin: 70)
		font "Times-Roman"
		resume_header
		cover_statement
		contact_info
		list_experiences(entries)
	end

	def resume_header
		text "Brian Petro", size: 32
		move_down 20
	end

	def cover_statement
		text "If what you are looking for is a self-motivated and technically apt team member, contact me and continue this conversation."
		move_down 20
	end

	def contact_info
		text "Brian@plexm.com"
		text "267-474-8036"
		text "70 Berkshire Lane"
		text "Palm Coast, FL 32137"
	end

	def list_experiences(entries)

		# List All Entries
		start_new_page
		text "All Entries", size: 24
		move_down 10
		entries.each do |e|
			text "<b>#{e.title}</b>", size: 16, inline_format: true
			text "<i>#{e.entry_url}</i>", inline_format: true
			text "#{strip_tags e.details.gsub(/&nbsp;/i," ")}"
			text " "
		end

		# Begin Projects
#		start_new_page
	#	text "Projects", size: 24
	#	move_down 10
#		entries.where(isProject: true).each do |e|
	#		text e.title, size: 16
		#	text "- #{e.details}"
	#		text " "
#		end

		#Begin Techs
#		start_new_page
#		text "Dev Tools", size: 24
#		move_down 10
#		entries.where(isTech: true).each do |e|
#			text e.title, size: 16
#			text "- #{e.details}"
#			text " "
#		end

	end

end
