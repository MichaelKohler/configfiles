function fish-apple-touchbar
    function __fish_apple_touchbar_first_view
        function bind_keys_function
            __fish_apple_touchbar_bind_key 1 '👉 BEAR' "cd" '/Volumes/Dev/bear'
            __fish_apple_touchbar_bind_key 2 'BEAR' '__fish_apple_touchbar_second_view'
            __fish_apple_touchbar_bind_key 3 'Test' "npm" 'test'
        end

        __fish_apple_touchbar_create_view 'HOME' bind_keys_function
    end

    function __fish_apple_touchbar_second_view
        function bind_keys_function
            __fish_apple_touchbar_bind_key 1 '👈 back' '__fish_apple_touchbar_first_view'
            __fish_apple_touchbar_bind_key 2 'Restart pm2' "pm2" 'restart all'
            __fish_apple_touchbar_bind_key 3 'Logs' "pm2" 'logs'
        end

        __fish_apple_touchbar_create_view 'BEAR' bind_keys_function
    end
end
