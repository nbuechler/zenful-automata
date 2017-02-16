#!/bin/bash

start_ample_affect_exhibit()
{
    cd ~/src/ample-affect-exhibit
    npm start dev >~/logfiles/ample_affect_exhibit_logfile.txt 2>&1 </dev null &
    return 0
}

start_hungry_interceptor()
{
    cd ~/src/hungry-interceptor
    . venv/bin/activate
    python app/runserver.py 5000 >~/logfiles/hungry_interceptor_logfile.txt 2>&1 </dev/null &
    return 0
}

start_speedy_affect_scorer()
{
    cd ~/src/speedy-affect-scorer
    . venv/bin/activate
    python app/runserver.py 7000 >~/logfiles/speedy_affect_scorer_logfile.txt 2>&1 </dev/null &
    return 0
}

start_fixed_gateway()
{
    cd ~/src/fixed-gateway/scripts
    node ../cluster_app.js dev >~/logfiles/fixed_gateway_logfile.txt 2>&1 </dev/null &
    return 0
}

start_kind_assistant()
{
    cd ~/src/kind-assistant/scripts
    node ../cluster_app.js dev >~/logfiles/kind_assistant_logfile.txt 2>&1 </dev/null &
    return 0
}

run()
{
    start_ample_affect_exhibit
    echo aae: 4000
    start_hungry_interceptor
    echo hi: 5000
    start_speedy_affect_scorer
    echo sas:  7000
    start_fixed_gateway
    echo fg: 9000
    start_kind_assistant
    echo ka: 3000
}

run
