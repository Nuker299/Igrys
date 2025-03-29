function RichIcons(icon)
    return{
        icon,
        {
            icon = "__Igrys__/Assets/Other/rich-icon.png",
            icon_size = 512,
            scale = 0.03,
            shift = {8, 8},
            --tint = {r = 0, g = 0, b = 0, a = 0.5}
        },
    }
end

-- Can't get it to work
--function MadeFromIcons(icon, madeFromIcon)
--    madeFromIcon.size = 0.0005
--    madeFromIcon.shift = {8, 8}
--    return{
--        icon,
--        madeFromIcon
--    }
--end