class Country
    # country_name, country_code, flag, city 
    attr_accessor :name, :code, :flag, :capital, :level

    def initialize(name, code, flag, capital, level)
        @name = name
        @code = code
        @flag = flag
        @capital = capital
        @level = level
    end
    
end

#set empty countries arrays
@countries = []

# Easy
@countries << Country.new('australia', 'au', '🇦🇺', 'canberra', 'easy')
@countries << Country.new('united states', 'usa', '🇺🇸', 'washington', 'easy')
@countries << Country.new('japan', 'jpn', '🇯🇵', 'tokyo', 'easy')
@countries << Country.new('united kingdom', 'gb', '🇬🇧', 'london', 'easy')
@countries << Country.new('ireland', 'ie', '🇮🇪', 'dublin', 'easy')
@countries << Country.new('canada', 'ca', '🇨🇦', 'ottawa', 'easy')
@countries << Country.new('italy', 'it', '🇮🇹', 'rome', 'easy')
@countries << Country.new('france', 'fr', '🇫🇷', 'paris', 'easy')
@countries << Country.new('south africa', 'za', '🇿🇦', 'johannesburg', 'easy')
@countries << Country.new('turkey', 'tr', '🇹🇷', 'ankara', 'easy')
@countries << Country.new('philippines', 'PH', '🇵🇭', 'manila', 'easy')
@countries << Country.new('russia', 'ru', '🇷🇺', 'moscow', 'easy')
@countries << Country.new('columbia', 'co', '🇨🇴', 'Bogota', 'easy')
@countries << Country.new('cuba', 'cu', '🇵🇷', 'havana', 'easy')
@countries << Country.new('austria', 'at', '🇦🇹', 'vienna', 'easy')

#Hard
@countries << Country.new('south korea', 'kr', '🇰🇷', 'seoul', 'hard')
@countries << Country.new('signapore', 'sg', '🇸🇬', 'signapore', 'hard')
@countries << Country.new('united arab emirites', 'uae', '🇦🇪', 'Abu Dahbi', 'hard')
@countries << Country.new('portugal', 'pt', '🇵🇹', 'lisbon', 'hard')
@countries << Country.new('finland', 'fi', '🇫🇮', 'Helsinki', 'hard')
@countries << Country.new('malaysia', 'my', '🇲🇾', 'kuala lumpur', 'hard')
@countries << Country.new('lebanon', 'lb', '🇱🇧', 'beirut', 'hard')
@countries << Country.new('jamaica', 'jm', '🇯🇲', 'kingston', 'hard')
@countries << Country.new('norway', 'no', '🇳🇴', 'oslo', 'hard')
@countries << Country.new('argentina', 'ar', '🇦🇷', 'buenos aires', 'hard')
@countries << Country.new('egypt', 'eg', '🇪🇬', 'cairo', 'hard')
@countries << Country.new('dominican republic', 'do', '🇩🇴', 'santo domingo', 'hard')
@countries << Country.new('iceland', 'is', '🇮🇸', 'reykjavik', 'hard')
@countries << Country.new('luxembourg', 'lu', '🇱🇺', 'luxembourg city', 'hard')
@countries << Country.new('india', 'ind', '🇮🇳', 'new delhi', 'hard')

#Extreme
@countries << Country.new('maldives', 'ml', '🇲🇻', 'malé', 'extreme')
@countries << Country.new('mauritius', 'mu', '🇲🇺', 'port louis', 'extreme')   
@countries << Country.new('turkmenistan', 'tm', '🇹🇲', 'ashgabat', 'extreme')
@countries << Country.new('swaziland', 'sz', '🇸🇿', 'mbabane, lobamba', 'extreme')
@countries << Country.new('saint lucia', 'lc', '🇱🇨', 'castries', 'extreme')
@countries << Country.new('zimbabwe', 'zw', '🇿🇼', 'harare', 'extreme')
@countries << Country.new('slovenia', 'si', '🇸🇮', 'ljubljana', 'extreme')
@countries << Country.new('sierra leone', 'sl', '🇸🇱', 'freetown', 'extreme')
@countries << Country.new('qatar', 'qa', '🇶🇦', 'doha', 'extreme')
@countries << Country.new('morocco', 'ma', '🇲🇦', 'rabat', 'extreme')
@countries << Country.new('suriname', 'sr', '🇸🇷', 'paramaribo', 'extreme')
@countries << Country.new('seychelles', 'sc', '🇸🇨', 'victoria', 'extreme')
@countries << Country.new('south sudan', 'ss', '🇸🇸', 'juba', 'extreme')
@countries << Country.new('niue', 'nu', '🇳🇺', 'alofi', 'extreme')
@countries << Country.new('georgia', 'ge', '🇬🇪', 'tbilisi', 'extreme')