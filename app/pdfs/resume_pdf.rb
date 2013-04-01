include ActionView::Helpers::SanitizeHelper
class ResumePdf < Prawn::Document

	def initialize(entries)
		super(top_margin: 70)
		font "Times-Roman"
		resume_header
		cover_statement
		contact_info
		list_projects(entries)
		list_techs(entries)
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

	def list_projects(entries)

		# List All Entries
		start_new_page
		text "Projects", size: 20
		move_down 8
		entries.each do |e|
			if !e.tech
				text "<b>#{e.title}</b>", size: 14, inline_format: true
				text "<i>#{e.entry_url}</i>", inline_format: true
				text "#{strip_tags e.details.gsub(/&nbsp;/i," ")}"
				move_down 8
			end
		end
	end
	def list_techs(entries)

		# List All Entries
		start_new_page
		text "Techs", size: 20
		move_down 8
		entries.each do |e|
			if e.tech
				text "<b>#{e.title}</b>", size: 14, inline_format: true
				text "<i>#{e.entry_url}</i>", inline_format: true
				text "#{strip_tags e.details.gsub(/&nbsp;/i," ")}"
				move_down 8
			end
		end
	end

end
