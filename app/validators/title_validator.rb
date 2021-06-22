class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            unless record.title.match?(/Won't Believe|Secret|Top [0-9]+|Guess/) 
                record.errors[:title] << "Must be click-bait-y"
            end
        end
    end
end