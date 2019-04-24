function fish-apple-touchbar
    if not status is-interactive
        exit 0
    end
    function __fish_apple_touchbar_first_view
        function bind_keys_function
            __fish_apple_touchbar_bind_key 1 'Node' '__fish_apple_touchbar_second_view'
            __fish_apple_touchbar_bind_key 2 '👉 BEAR' "cd /Volumes/Dev/bear" '-s'
            __fish_apple_touchbar_bind_key 3 '👉 CB' "cd /Volumes/Dev/bear/brain/cerebellum" '-s'
            __fish_apple_touchbar_bind_key 4 '👉 TR2' "cd /Volumes/Dev/bear/tr2" '-s'
            __fish_apple_touchbar_bind_key 5 'Test' "npm test" '-s'
        end

        __fish_apple_touchbar_create_view 'HOME' bind_keys_function
    end

    function __fish_apple_touchbar_second_view
        function bind_keys_function
            __fish_apple_touchbar_bind_key 1 '👈 back' '__fish_apple_touchbar_first_view'
            __fish_apple_touchbar_bind_key 2 'Restart pm2' "pm2 restart all" '-s'
            __fish_apple_touchbar_bind_key 3 'Logs' "pm2 logs" '-s'
        end

        __fish_apple_touchbar_create_view 'BEAR' bind_keys_function
    end
end
