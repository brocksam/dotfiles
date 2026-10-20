. "$HOME/.cargo/env"

. "$HOME/.local/bin/env"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/Users/sgb39/.juliaup/bin:*)
        ;;

    *)
        export PATH=/Users/sgb39/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<
