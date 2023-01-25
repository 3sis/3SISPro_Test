@extends('layouts.app')
@section('content')
@section('css')

@endsection
<div class="row layout-top-spacing">

                        <div class="col-xl-4 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
                            <div class="widget widget-six">
                                <div class="widget-heading">
                                    <h6 class="">Statistics</h6>
                                    <div class="task-action">
                                        <div class="dropdown">
                                            <a class="dropdown-toggle" href="#" role="button" id="statistics" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
                                            </a>

                                            <div class="dropdown-menu left" aria-labelledby="statistics" style="will-change: transform;">
                                                <a class="dropdown-item" href="javascript:void(0);">View</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Download</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="w-chart">
                                    <div class="w-chart-section">
                                        <div class="w-detail">
                                            <p class="w-title">Total Visits</p>
                                            <p class="w-stats">423,964</p>
                                        </div>
                                        <div class="w-chart-render-one">
                                            <div id="total-users" style="min-height: 95px;"><div id="apexchartsuniquexvisits" class="apexcharts-canvas apexchartsuniquexvisits apexcharts-theme-light" style="width: 118px; height: 95px;"><svg id="SvgjsSvg2541" width="118" height="95" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2543" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 35)"><defs id="SvgjsDefs2542"><clipPath id="gridRectMask9z33gmif"><rect id="SvgjsRect2549" width="124" height="62" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMask9z33gmif"></clipPath><clipPath id="nonForecastMask9z33gmif"></clipPath><clipPath id="gridRectMarkerMask9z33gmif"><rect id="SvgjsRect2550" width="122" height="64" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><filter id="SvgjsFilter2556" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood2557" flood-color="#e2a03f" flood-opacity="0.7" result="SvgjsFeFlood2557Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite2558" in="SvgjsFeFlood2557Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite2558Out"></feComposite><feOffset id="SvgjsFeOffset2559" dx="1" dy="1" result="SvgjsFeOffset2559Out" in="SvgjsFeComposite2558Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur2560" stdDeviation="2 " result="SvgjsFeGaussianBlur2560Out" in="SvgjsFeOffset2559Out"></feGaussianBlur><feMerge id="SvgjsFeMerge2561" result="SvgjsFeMerge2561Out" in="SourceGraphic"><feMergeNode id="SvgjsFeMergeNode2562" in="SvgjsFeGaussianBlur2560Out"></feMergeNode><feMergeNode id="SvgjsFeMergeNode2563" in="[object Arguments]"></feMergeNode></feMerge><feBlend id="SvgjsFeBlend2564" in="SourceGraphic" in2="SvgjsFeMerge2561Out" mode="normal" result="SvgjsFeBlend2564Out"></feBlend></filter></defs><line id="SvgjsLine2548" x1="0" y1="0" x2="0" y2="60" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="60" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG2565" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2566" class="apexcharts-xaxis-texts-g" transform="translate(0, 4)"></g></g><g id="SvgjsG2578" class="apexcharts-grid"><g id="SvgjsG2579" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine2581" x1="0" y1="0" x2="118" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2582" x1="0" y1="8.571428571428571" x2="118" y2="8.571428571428571" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2583" x1="0" y1="17.142857142857142" x2="118" y2="17.142857142857142" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2584" x1="0" y1="25.714285714285715" x2="118" y2="25.714285714285715" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2585" x1="0" y1="34.285714285714285" x2="118" y2="34.285714285714285" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2586" x1="0" y1="42.857142857142854" x2="118" y2="42.857142857142854" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2587" x1="0" y1="51.42857142857142" x2="118" y2="51.42857142857142" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2588" x1="0" y1="59.99999999999999" x2="118" y2="59.99999999999999" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG2580" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine2590" x1="0" y1="60" x2="118" y2="60" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine2589" x1="0" y1="1" x2="0" y2="60" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG2551" class="apexcharts-line-series apexcharts-plot-series"><g id="SvgjsG2552" class="apexcharts-series" seriesName="seriesx1" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath2555" d="M 0 42C 4.588888888888889 42 8.522222222222222 52.285714285714285 13.11111111111111 52.285714285714285C 17.7 52.285714285714285 21.633333333333333 29.142857142857146 26.22222222222222 29.142857142857146C 30.81111111111111 29.142857142857146 34.74444444444444 49.714285714285715 39.33333333333333 49.714285714285715C 43.92222222222222 49.714285714285715 47.855555555555554 22.285714285714285 52.44444444444444 22.285714285714285C 57.03333333333333 22.285714285714285 60.96666666666667 38.57142857142857 65.55555555555556 38.57142857142857C 70.14444444444445 38.57142857142857 74.07777777777777 9.42857142857143 78.66666666666666 9.42857142857143C 83.25555555555555 9.42857142857143 87.18888888888888 24.85714285714286 91.77777777777777 24.85714285714286C 96.36666666666666 24.85714285714286 100.3 3.4285714285714306 104.88888888888889 3.4285714285714306C 109.47777777777777 3.4285714285714306 113.4111111111111 38.57142857142857 117.99999999999999 38.57142857142857" fill="none" fill-opacity="1" stroke="rgba(226,160,63,0.85)" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-line" index="0" clip-path="url(#gridRectMask9z33gmif)" filter="url(#SvgjsFilter2556)" pathTo="M 0 42C 4.588888888888889 42 8.522222222222222 52.285714285714285 13.11111111111111 52.285714285714285C 17.7 52.285714285714285 21.633333333333333 29.142857142857146 26.22222222222222 29.142857142857146C 30.81111111111111 29.142857142857146 34.74444444444444 49.714285714285715 39.33333333333333 49.714285714285715C 43.92222222222222 49.714285714285715 47.855555555555554 22.285714285714285 52.44444444444444 22.285714285714285C 57.03333333333333 22.285714285714285 60.96666666666667 38.57142857142857 65.55555555555556 38.57142857142857C 70.14444444444445 38.57142857142857 74.07777777777777 9.42857142857143 78.66666666666666 9.42857142857143C 83.25555555555555 9.42857142857143 87.18888888888888 24.85714285714286 91.77777777777777 24.85714285714286C 96.36666666666666 24.85714285714286 100.3 3.4285714285714306 104.88888888888889 3.4285714285714306C 109.47777777777777 3.4285714285714306 113.4111111111111 38.57142857142857 117.99999999999999 38.57142857142857" pathFrom="M -1 60L -1 60L 13.11111111111111 60L 26.22222222222222 60L 39.33333333333333 60L 52.44444444444444 60L 65.55555555555556 60L 78.66666666666666 60L 91.77777777777777 60L 104.88888888888889 60L 117.99999999999999 60"></path><g id="SvgjsG2553" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle2596" r="0" cx="0" cy="0" class="apexcharts-marker weu8q58ux no-pointer-events" stroke="#ffffff" fill="#e2a03f" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG2554" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine2591" x1="0" y1="0" x2="118" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2592" x1="0" y1="0" x2="118" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG2593" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG2594" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG2595" class="apexcharts-point-annotations"></g></g><rect id="SvgjsRect2547" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG2577" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG2544" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 47.5px;"></div><div class="apexcharts-tooltip apexcharts-theme-dark"><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(226, 160, 63);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-dark"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                                        </div>
                                    </div>

                                    <div class="w-chart-section">
                                        <div class="w-detail">
                                            <p class="w-title">Paid Visits</p>
                                            <p class="w-stats">7,929</p>
                                        </div>
                                        <div class="w-chart-render-one">
                                            <div id="paid-visits" style="min-height: 95px;"><div id="apexchartstotalxusers" class="apexcharts-canvas apexchartstotalxusers apexcharts-theme-light" style="width: 118px; height: 95px;"><svg id="SvgjsSvg2598" width="118" height="95" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2600" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 35)"><defs id="SvgjsDefs2599"><clipPath id="gridRectMasktgda7beh"><rect id="SvgjsRect2606" width="124" height="62" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMasktgda7beh"></clipPath><clipPath id="nonForecastMasktgda7beh"></clipPath><clipPath id="gridRectMarkerMasktgda7beh"><rect id="SvgjsRect2607" width="122" height="64" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><filter id="SvgjsFilter2613" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood2614" flood-color="#009688" flood-opacity="0.7" result="SvgjsFeFlood2614Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite2615" in="SvgjsFeFlood2614Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite2615Out"></feComposite><feOffset id="SvgjsFeOffset2616" dx="1" dy="3" result="SvgjsFeOffset2616Out" in="SvgjsFeComposite2615Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur2617" stdDeviation="3 " result="SvgjsFeGaussianBlur2617Out" in="SvgjsFeOffset2616Out"></feGaussianBlur><feMerge id="SvgjsFeMerge2618" result="SvgjsFeMerge2618Out" in="SourceGraphic"><feMergeNode id="SvgjsFeMergeNode2619" in="SvgjsFeGaussianBlur2617Out"></feMergeNode><feMergeNode id="SvgjsFeMergeNode2620" in="[object Arguments]"></feMergeNode></feMerge><feBlend id="SvgjsFeBlend2621" in="SourceGraphic" in2="SvgjsFeMerge2618Out" mode="normal" result="SvgjsFeBlend2621Out"></feBlend></filter></defs><line id="SvgjsLine2605" x1="0" y1="0" x2="0" y2="60" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="60" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG2622" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2623" class="apexcharts-xaxis-texts-g" transform="translate(0, 4)"></g></g><g id="SvgjsG2635" class="apexcharts-grid"><g id="SvgjsG2636" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine2638" x1="0" y1="0" x2="118" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2639" x1="0" y1="8.571428571428571" x2="118" y2="8.571428571428571" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2640" x1="0" y1="17.142857142857142" x2="118" y2="17.142857142857142" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2641" x1="0" y1="25.714285714285715" x2="118" y2="25.714285714285715" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2642" x1="0" y1="34.285714285714285" x2="118" y2="34.285714285714285" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2643" x1="0" y1="42.857142857142854" x2="118" y2="42.857142857142854" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2644" x1="0" y1="51.42857142857142" x2="118" y2="51.42857142857142" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2645" x1="0" y1="59.99999999999999" x2="118" y2="59.99999999999999" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG2637" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine2647" x1="0" y1="60" x2="118" y2="60" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine2646" x1="0" y1="1" x2="0" y2="60" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG2608" class="apexcharts-line-series apexcharts-plot-series"><g id="SvgjsG2609" class="apexcharts-series" seriesName="seriesx1" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath2612" d="M 0 49.71428571428571C 4.588888888888889 49.71428571428571 8.522222222222222 52.285714285714285 13.11111111111111 52.285714285714285C 17.7 52.285714285714285 21.633333333333333 42.85714285714286 26.22222222222222 42.85714285714286C 30.81111111111111 42.85714285714286 34.74444444444444 28.285714285714285 39.33333333333333 28.285714285714285C 43.92222222222222 28.285714285714285 47.855555555555554 41.14285714285714 52.44444444444444 41.14285714285714C 57.03333333333333 41.14285714285714 60.96666666666667 30.857142857142854 65.55555555555556 30.857142857142854C 70.14444444444445 30.857142857142854 74.07777777777777 39.42857142857143 78.66666666666666 39.42857142857143C 83.25555555555555 39.42857142857143 87.18888888888888 21.42857142857143 91.77777777777777 21.42857142857143C 96.36666666666666 21.42857142857143 100.3 33.42857142857143 104.88888888888889 33.42857142857143C 109.47777777777777 33.42857142857143 113.4111111111111 9.42857142857143 117.99999999999999 9.42857142857143" fill="none" fill-opacity="1" stroke="rgba(0,150,136,0.85)" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-line" index="0" clip-path="url(#gridRectMasktgda7beh)" filter="url(#SvgjsFilter2613)" pathTo="M 0 49.71428571428571C 4.588888888888889 49.71428571428571 8.522222222222222 52.285714285714285 13.11111111111111 52.285714285714285C 17.7 52.285714285714285 21.633333333333333 42.85714285714286 26.22222222222222 42.85714285714286C 30.81111111111111 42.85714285714286 34.74444444444444 28.285714285714285 39.33333333333333 28.285714285714285C 43.92222222222222 28.285714285714285 47.855555555555554 41.14285714285714 52.44444444444444 41.14285714285714C 57.03333333333333 41.14285714285714 60.96666666666667 30.857142857142854 65.55555555555556 30.857142857142854C 70.14444444444445 30.857142857142854 74.07777777777777 39.42857142857143 78.66666666666666 39.42857142857143C 83.25555555555555 39.42857142857143 87.18888888888888 21.42857142857143 91.77777777777777 21.42857142857143C 96.36666666666666 21.42857142857143 100.3 33.42857142857143 104.88888888888889 33.42857142857143C 109.47777777777777 33.42857142857143 113.4111111111111 9.42857142857143 117.99999999999999 9.42857142857143" pathFrom="M -1 68.57142857142857L -1 68.57142857142857L 13.11111111111111 68.57142857142857L 26.22222222222222 68.57142857142857L 39.33333333333333 68.57142857142857L 52.44444444444444 68.57142857142857L 65.55555555555556 68.57142857142857L 78.66666666666666 68.57142857142857L 91.77777777777777 68.57142857142857L 104.88888888888889 68.57142857142857L 117.99999999999999 68.57142857142857"></path><g id="SvgjsG2610" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle2653" r="0" cx="0" cy="0" class="apexcharts-marker w8ga7uriih no-pointer-events" stroke="#ffffff" fill="#009688" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG2611" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine2648" x1="0" y1="0" x2="118" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2649" x1="0" y1="0" x2="118" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG2650" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG2651" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG2652" class="apexcharts-point-annotations"></g></g><rect id="SvgjsRect2604" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG2634" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG2601" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 47.5px;"></div><div class="apexcharts-tooltip apexcharts-theme-dark"><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(0, 150, 136);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-dark"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
                            <div class="widget widget-card-four">
                                <div class="widget-content">
                                    <div class="w-header">
                                        <div class="w-info">
                                            <h6 class="value">Expenses</h6>
                                        </div>
                                        <div class="task-action">
                                            <div class="dropdown">
                                                <a class="dropdown-toggle" href="#" role="button" id="expenses" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
                                                </a>

                                                <div class="dropdown-menu left" aria-labelledby="expenses" style="will-change: transform;">
                                                    <a class="dropdown-item" href="javascript:void(0);">This Week</a>
                                                    <a class="dropdown-item" href="javascript:void(0);">Last Week</a>
                                                    <a class="dropdown-item" href="javascript:void(0);">Last Month</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="w-content">

                                        <div class="w-info">
                                            <p class="value">$ 45,141 <span>this week</span> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trending-up"><polyline points="23 6 13.5 15.5 8.5 10.5 1 18"></polyline><polyline points="17 6 23 6 23 12"></polyline></svg></p>
                                        </div>
                                        
                                    </div>

                                    <div class="w-progress-stats">                                            
                                        <div class="progress">
                                            <div class="progress-bar bg-gradient-secondary" role="progressbar" style="width: 57%" aria-valuenow="57" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>

                                        <div class="">
                                            <div class="w-icon">
                                                <p>57%</p>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>  

                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
                            <div class="widget widget-card-five">
                                <div class="widget-content">
                                    <div class="account-box">

                                        <div class="info-box">
                                            <div class="icon">
                                                <span>
                                                    <img src="../src/assets/img/money-bag.png" alt="money-bag">
                                                </span>
                                            </div>

                                            <div class="balance-info">
                                                <h6>Total Balance</h6>
                                                <p>$41,741.42</p>
                                            </div>
                                        </div>

                                        <div class="card-bottom-section">
                                            <div><span class="badge badge-light-success">+ 13.6% <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trending-up"><polyline points="23 6 13.5 15.5 8.5 10.5 1 18"></polyline><polyline points="17 6 23 6 23 12"></polyline></svg></span></div>
                                            <a href="javascript:void(0);" class="">View Report</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
                            <div class="widget widget-activity-five">

                                <div class="widget-heading">
                                    <h5 class="">Activity Log</h5>

                                    <div class="task-action">
                                        <div class="dropdown">
                                            <a class="dropdown-toggle" href="#" role="button" id="activitylog" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
                                            </a>

                                            <div class="dropdown-menu left" aria-labelledby="activitylog" style="will-change: transform;">
                                                <a class="dropdown-item" href="javascript:void(0);">View All</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Mark as Read</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="widget-content">

                                    <div class="w-shadow-top"></div>

                                    <div class="mt-container mx-auto ps ps--active-y">
                                        <div class="timeline-line">
                                            
                                            <div class="item-timeline timeline-new">
                                                <div class="t-dot">
                                                    <div class="t-secondary"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg></div>
                                                </div>
                                                <div class="t-content">
                                                    <div class="t-uppercontent">
                                                        <h5>New project created : <a href="javscript:void(0);"><span>[Cork Admin]</span></a></h5>
                                                    </div>
                                                    <p>07 May, 2022</p>
                                                </div>
                                            </div>

                                            <div class="item-timeline timeline-new">
                                                <div class="t-dot">
                                                    <div class="t-success"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg></div>
                                                </div>
                                                <div class="t-content">
                                                    <div class="t-uppercontent">
                                                        <h5>Mail sent to <a href="javascript:void(0);">HR</a> and <a href="javascript:void(0);">Admin</a></h5>
                                                    </div>
                                                    <p>06 May, 2022</p>
                                                </div>
                                            </div>

                                            <div class="item-timeline timeline-new">
                                                <div class="t-dot">
                                                    <div class="t-primary"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check"><polyline points="20 6 9 17 4 12"></polyline></svg></div>
                                                </div>
                                                <div class="t-content">
                                                    <div class="t-uppercontent">
                                                        <h5>Server Logs Updated</h5>
                                                    </div>
                                                    <p>01 May, 2022</p>
                                                </div>
                                            </div>

                                            <div class="item-timeline timeline-new">
                                                <div class="t-dot">
                                                    <div class="t-danger"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check"><polyline points="20 6 9 17 4 12"></polyline></svg></div>
                                                </div>
                                                <div class="t-content">
                                                    <div class="t-uppercontent">
                                                        <h5>Task Completed : <a href="javscript:void(0);"><span>[Backup Files EOD]</span></a></h5>
                                                    </div>
                                                    <p>30 Apr, 2022</p>
                                                </div>
                                            </div>

                                            <div class="item-timeline timeline-new">
                                                <div class="t-dot">
                                                    <div class="t-warning"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg></div>
                                                </div>
                                                <div class="t-content">
                                                    <div class="t-uppercontent">
                                                        <h5>Documents Submitted from <a href="javascript:void(0);">Sara</a></h5>
                                                        <span class=""></span>
                                                    </div>
                                                    <p>25 Apr, 2022</p>
                                                </div>
                                            </div>

                                            <div class="item-timeline timeline-new">
                                                <div class="t-dot">
                                                    <div class="t-dark"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-server"><rect x="2" y="2" width="20" height="8" rx="2" ry="2"></rect><rect x="2" y="14" width="20" height="8" rx="2" ry="2"></rect><line x1="6" y1="6" x2="6" y2="6"></line><line x1="6" y1="18" x2="6" y2="18"></line></svg></div>
                                                </div>
                                                <div class="t-content">
                                                    <div class="t-uppercontent">
                                                        <h5>Server rebooted successfully</h5>
                                                        <span class=""></span>
                                                    </div>
                                                    <p>10 Apr, 2022</p>
                                                </div>
                                            </div>                                      
                                        </div>                                    
                                    <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; height: 332px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 212px;"></div></div></div>

                                    <div class="w-shadow-bottom"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
                            <div class="widget-four">
                                <div class="widget-heading">
                                    <h5 class="">Visitors by Browser</h5>
                                </div>
                                <div class="widget-content">
                                    <div class="vistorsBrowser">
                                        <div class="browser-list">
                                            <div class="w-icon">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chrome"><circle cx="12" cy="12" r="10"></circle><circle cx="12" cy="12" r="4"></circle><line x1="21.17" y1="8" x2="12" y2="8"></line><line x1="3.95" y1="6.06" x2="8.54" y2="14"></line><line x1="10.88" y1="21.94" x2="15.46" y2="14"></line></svg>
                                            </div>
                                            <div class="w-browser-details">
                                                <div class="w-browser-info">
                                                    <h6>Chrome</h6>
                                                    <p class="browser-count">65%</p>
                                                </div>
                                                <div class="w-browser-stats">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-gradient-primary" role="progressbar" style="width: 65%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="browser-list">
                                            <div class="w-icon">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-compass"><circle cx="12" cy="12" r="10"></circle><polygon points="16.24 7.76 14.12 14.12 7.76 16.24 9.88 9.88 16.24 7.76"></polygon></svg>
                                            </div>
                                            <div class="w-browser-details">
                                                
                                                <div class="w-browser-info">
                                                    <h6>Safari</h6>
                                                    <p class="browser-count">25%</p>
                                                </div>

                                                <div class="w-browser-stats">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-gradient-danger" role="progressbar" style="width: 35%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>

                                        <div class="browser-list">
                                            <div class="w-icon">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>
                                            </div>
                                            <div class="w-browser-details">
                                                
                                                <div class="w-browser-info">
                                                    <h6>Others</h6>
                                                    <p class="browser-count">15%</p>
                                                </div>

                                                <div class="w-browser-stats">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-gradient-warning" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                        
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="row widget-statistic">
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12 layout-spacing">
                                    <div class="widget widget-one_hybrid widget-followers">
                                        <div class="widget-heading">
                                            <div class="w-title">
                                                <div class="w-icon">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                                                </div>
                                                <div class="">
                                                    <p class="w-value">31.6K</p>
                                                    <h5 class="">Followers</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="widget-content">    
                                            <div class="w-chart">
                                                <div id="hybrid_followers" style="min-height: 160px;"><div id="apexchartssparkline1" class="apexcharts-canvas apexchartssparkline1 apexcharts-theme-light" style="width: 206px; height: 160px;"><svg id="SvgjsSvg2898" width="206" height="160" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2900" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 5)"><defs id="SvgjsDefs2899"><clipPath id="gridRectMask7m73x6a4i"><rect id="SvgjsRect2905" width="212" height="157" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMask7m73x6a4i"></clipPath><clipPath id="nonForecastMask7m73x6a4i"></clipPath><clipPath id="gridRectMarkerMask7m73x6a4i"><rect id="SvgjsRect2906" width="210" height="159" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient2911" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop2912" stop-opacity="0.3" stop-color="rgba(67,97,238,0.3)" offset="1"></stop><stop id="SvgjsStop2913" stop-opacity="0.05" stop-color="rgba(255,255,255,0.05)" offset="1"></stop><stop id="SvgjsStop2914" stop-opacity="0.05" stop-color="rgba(255,255,255,0.05)" offset="1"></stop></linearGradient></defs><line id="SvgjsLine2904" x1="0" y1="0" x2="0" y2="155" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="155" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG2917" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2918" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG2927" class="apexcharts-grid"><g id="SvgjsG2928" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine2930" x1="0" y1="0" x2="206" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2931" x1="0" y1="15.5" x2="206" y2="15.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2932" x1="0" y1="31" x2="206" y2="31" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2933" x1="0" y1="46.5" x2="206" y2="46.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2934" x1="0" y1="62" x2="206" y2="62" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2935" x1="0" y1="77.5" x2="206" y2="77.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2936" x1="0" y1="93" x2="206" y2="93" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2937" x1="0" y1="108.5" x2="206" y2="108.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2938" x1="0" y1="124" x2="206" y2="124" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2939" x1="0" y1="139.5" x2="206" y2="139.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2940" x1="0" y1="155" x2="206" y2="155" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG2929" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine2942" x1="0" y1="155" x2="206" y2="155" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine2941" x1="0" y1="1" x2="0" y2="155" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG2907" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG2908" class="apexcharts-series" seriesName="Sales" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath2915" d="M 0 155L 0 56.83333333333333C 12.016666666666667 56.83333333333333 22.31666666666667 0 34.333333333333336 0C 46.35 0 56.650000000000006 56.83333333333333 68.66666666666667 56.83333333333333C 80.68333333333334 56.83333333333333 90.98333333333333 20.666666666666657 103 20.666666666666657C 115.01666666666667 20.666666666666657 125.31666666666668 62 137.33333333333334 62C 149.35 62 159.65 51.66666666666666 171.66666666666666 51.66666666666666C 183.68333333333334 51.66666666666666 193.98333333333332 82.66666666666667 206 82.66666666666667C 206 82.66666666666667 206 82.66666666666667 206 155M 206 82.66666666666667z" fill="url(#SvgjsLinearGradient2911)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask7m73x6a4i)" pathTo="M 0 155L 0 56.83333333333333C 12.016666666666667 56.83333333333333 22.31666666666667 0 34.333333333333336 0C 46.35 0 56.650000000000006 56.83333333333333 68.66666666666667 56.83333333333333C 80.68333333333334 56.83333333333333 90.98333333333333 20.666666666666657 103 20.666666666666657C 115.01666666666667 20.666666666666657 125.31666666666668 62 137.33333333333334 62C 149.35 62 159.65 51.66666666666666 171.66666666666666 51.66666666666666C 183.68333333333334 51.66666666666666 193.98333333333332 82.66666666666667 206 82.66666666666667C 206 82.66666666666667 206 82.66666666666667 206 155M 206 82.66666666666667z" pathFrom="M -1 155L -1 155L 34.333333333333336 155L 68.66666666666667 155L 103 155L 137.33333333333334 155L 171.66666666666666 155L 206 155"></path><path id="SvgjsPath2916" d="M 0 56.83333333333333C 12.016666666666667 56.83333333333333 22.31666666666667 0 34.333333333333336 0C 46.35 0 56.650000000000006 56.83333333333333 68.66666666666667 56.83333333333333C 80.68333333333334 56.83333333333333 90.98333333333333 20.666666666666657 103 20.666666666666657C 115.01666666666667 20.666666666666657 125.31666666666668 62 137.33333333333334 62C 149.35 62 159.65 51.66666666666666 171.66666666666666 51.66666666666666C 183.68333333333334 51.66666666666666 193.98333333333332 82.66666666666667 206 82.66666666666667" fill="none" fill-opacity="1" stroke="#4361ee" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask7m73x6a4i)" pathTo="M 0 56.83333333333333C 12.016666666666667 56.83333333333333 22.31666666666667 0 34.333333333333336 0C 46.35 0 56.650000000000006 56.83333333333333 68.66666666666667 56.83333333333333C 80.68333333333334 56.83333333333333 90.98333333333333 20.666666666666657 103 20.666666666666657C 115.01666666666667 20.666666666666657 125.31666666666668 62 137.33333333333334 62C 149.35 62 159.65 51.66666666666666 171.66666666666666 51.66666666666666C 183.68333333333334 51.66666666666666 193.98333333333332 82.66666666666667 206 82.66666666666667" pathFrom="M -1 155L -1 155L 34.333333333333336 155L 68.66666666666667 155L 103 155L 137.33333333333334 155L 171.66666666666666 155L 206 155"></path><g id="SvgjsG2909" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle2948" r="0" cx="0" cy="0" class="apexcharts-marker woy0uscu3j no-pointer-events" stroke="#ffffff" fill="#4361ee" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG2910" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine2943" x1="0" y1="0" x2="206" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2944" x1="0" y1="0" x2="206" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG2945" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG2946" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG2947" class="apexcharts-point-annotations"></g></g><rect id="SvgjsRect2903" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG2926" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG2901" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 80px;"></div><div class="apexcharts-tooltip apexcharts-theme-dark"><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(67, 97, 238);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-dark"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12 layout-spacing">
                                    <div class="widget widget-one_hybrid widget-referral">
                                        <div class="widget-heading">
                                            <div class="w-title">
                                                <div class="w-icon">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-link"><path d="M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71"></path><path d="M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71"></path></svg>
                                                </div>
                                                <div class="">
                                                    <p class="w-value">1,900</p>
                                                    <h5 class="">Referral</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="widget-content">    
                                            <div class="w-chart">
                                                <div id="hybrid_followers1" style="min-height: 160px;"><div id="apexchartssparkline1" class="apexcharts-canvas apexchartssparkline1 apexcharts-theme-light" style="width: 206px; height: 160px;"><svg id="SvgjsSvg2950" width="206" height="160" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2952" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 5)"><defs id="SvgjsDefs2951"><clipPath id="gridRectMaskt7g8kal1"><rect id="SvgjsRect2957" width="212" height="157" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskt7g8kal1"></clipPath><clipPath id="nonForecastMaskt7g8kal1"></clipPath><clipPath id="gridRectMarkerMaskt7g8kal1"><rect id="SvgjsRect2958" width="210" height="159" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient2963" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop2964" stop-opacity="0.3" stop-color="rgba(231,81,90,0.3)" offset="1"></stop><stop id="SvgjsStop2965" stop-opacity="0.05" stop-color="rgba(255,255,255,0.05)" offset="1"></stop><stop id="SvgjsStop2966" stop-opacity="0.05" stop-color="rgba(255,255,255,0.05)" offset="1"></stop></linearGradient></defs><line id="SvgjsLine2956" x1="0" y1="0" x2="0" y2="155" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="155" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG2969" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2970" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG2979" class="apexcharts-grid"><g id="SvgjsG2980" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine2982" x1="0" y1="0" x2="206" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2983" x1="0" y1="15.5" x2="206" y2="15.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2984" x1="0" y1="31" x2="206" y2="31" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2985" x1="0" y1="46.5" x2="206" y2="46.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2986" x1="0" y1="62" x2="206" y2="62" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2987" x1="0" y1="77.5" x2="206" y2="77.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2988" x1="0" y1="93" x2="206" y2="93" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2989" x1="0" y1="108.5" x2="206" y2="108.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2990" x1="0" y1="124" x2="206" y2="124" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2991" x1="0" y1="139.5" x2="206" y2="139.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2992" x1="0" y1="155" x2="206" y2="155" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG2981" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine2994" x1="0" y1="155" x2="206" y2="155" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine2993" x1="0" y1="1" x2="0" y2="155" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG2959" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG2960" class="apexcharts-series" seriesName="Sales" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath2967" d="M 0 155L 0 0C 12.016666666666667 0 22.31666666666667 82.66666666666667 34.333333333333336 82.66666666666667C 46.35 82.66666666666667 56.650000000000006 20.666666666666657 68.66666666666667 20.666666666666657C 80.68333333333334 20.666666666666657 90.98333333333333 56.83333333333333 103 56.83333333333333C 115.01666666666667 56.83333333333333 125.31666666666668 51.66666666666666 137.33333333333334 51.66666666666666C 149.35 51.66666666666666 159.65 62 171.66666666666666 62C 183.68333333333334 62 193.98333333333332 56.83333333333333 206 56.83333333333333C 206 56.83333333333333 206 56.83333333333333 206 155M 206 56.83333333333333z" fill="url(#SvgjsLinearGradient2963)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskt7g8kal1)" pathTo="M 0 155L 0 0C 12.016666666666667 0 22.31666666666667 82.66666666666667 34.333333333333336 82.66666666666667C 46.35 82.66666666666667 56.650000000000006 20.666666666666657 68.66666666666667 20.666666666666657C 80.68333333333334 20.666666666666657 90.98333333333333 56.83333333333333 103 56.83333333333333C 115.01666666666667 56.83333333333333 125.31666666666668 51.66666666666666 137.33333333333334 51.66666666666666C 149.35 51.66666666666666 159.65 62 171.66666666666666 62C 183.68333333333334 62 193.98333333333332 56.83333333333333 206 56.83333333333333C 206 56.83333333333333 206 56.83333333333333 206 155M 206 56.83333333333333z" pathFrom="M -1 155L -1 155L 34.333333333333336 155L 68.66666666666667 155L 103 155L 137.33333333333334 155L 171.66666666666666 155L 206 155"></path><path id="SvgjsPath2968" d="M 0 0C 12.016666666666667 0 22.31666666666667 82.66666666666667 34.333333333333336 82.66666666666667C 46.35 82.66666666666667 56.650000000000006 20.666666666666657 68.66666666666667 20.666666666666657C 80.68333333333334 20.666666666666657 90.98333333333333 56.83333333333333 103 56.83333333333333C 115.01666666666667 56.83333333333333 125.31666666666668 51.66666666666666 137.33333333333334 51.66666666666666C 149.35 51.66666666666666 159.65 62 171.66666666666666 62C 183.68333333333334 62 193.98333333333332 56.83333333333333 206 56.83333333333333" fill="none" fill-opacity="1" stroke="#e7515a" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskt7g8kal1)" pathTo="M 0 0C 12.016666666666667 0 22.31666666666667 82.66666666666667 34.333333333333336 82.66666666666667C 46.35 82.66666666666667 56.650000000000006 20.666666666666657 68.66666666666667 20.666666666666657C 80.68333333333334 20.666666666666657 90.98333333333333 56.83333333333333 103 56.83333333333333C 115.01666666666667 56.83333333333333 125.31666666666668 51.66666666666666 137.33333333333334 51.66666666666666C 149.35 51.66666666666666 159.65 62 171.66666666666666 62C 183.68333333333334 62 193.98333333333332 56.83333333333333 206 56.83333333333333" pathFrom="M -1 155L -1 155L 34.333333333333336 155L 68.66666666666667 155L 103 155L 137.33333333333334 155L 171.66666666666666 155L 206 155"></path><g id="SvgjsG2961" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle3000" r="0" cx="0" cy="0" class="apexcharts-marker wsddbfijw no-pointer-events" stroke="#ffffff" fill="#e7515a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG2962" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine2995" x1="0" y1="0" x2="206" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2996" x1="0" y1="0" x2="206" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG2997" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG2998" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG2999" class="apexcharts-point-annotations"></g></g><rect id="SvgjsRect2955" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG2978" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG2953" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 80px;"></div><div class="apexcharts-tooltip apexcharts-theme-dark"><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(231, 81, 90);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-dark"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12 layout-spacing">
                                    <div class="widget widget-one_hybrid widget-engagement">
                                        <div class="widget-heading">
                                            <div class="w-title">
                                                <div class="w-icon">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
                                                </div>
                                                <div class="">
                                                    <p class="w-value">18.2%</p>
                                                    <h5 class="">Engagement</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="widget-content">    
                                            <div class="w-chart">
                                                <div id="hybrid_followers3" style="min-height: 160px;"><div id="apexchartssparkline1" class="apexcharts-canvas apexchartssparkline1 apexcharts-theme-light" style="width: 206px; height: 160px;"><svg id="SvgjsSvg3002" width="206" height="160" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG3004" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 5)"><defs id="SvgjsDefs3003"><clipPath id="gridRectMaskgrgf9tf1"><rect id="SvgjsRect3009" width="212" height="157" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskgrgf9tf1"></clipPath><clipPath id="nonForecastMaskgrgf9tf1"></clipPath><clipPath id="gridRectMarkerMaskgrgf9tf1"><rect id="SvgjsRect3010" width="210" height="159" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient3015" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop3016" stop-opacity="0.3" stop-color="rgba(0,171,85,0.3)" offset="1"></stop><stop id="SvgjsStop3017" stop-opacity="0.05" stop-color="rgba(255,255,255,0.05)" offset="1"></stop><stop id="SvgjsStop3018" stop-opacity="0.05" stop-color="rgba(255,255,255,0.05)" offset="1"></stop></linearGradient></defs><line id="SvgjsLine3008" x1="0" y1="0" x2="0" y2="155" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="155" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG3021" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG3022" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG3031" class="apexcharts-grid"><g id="SvgjsG3032" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine3034" x1="0" y1="0" x2="206" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3035" x1="0" y1="15.5" x2="206" y2="15.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3036" x1="0" y1="31" x2="206" y2="31" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3037" x1="0" y1="46.5" x2="206" y2="46.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3038" x1="0" y1="62" x2="206" y2="62" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3039" x1="0" y1="77.5" x2="206" y2="77.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3040" x1="0" y1="93" x2="206" y2="93" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3041" x1="0" y1="108.5" x2="206" y2="108.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3042" x1="0" y1="124" x2="206" y2="124" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3043" x1="0" y1="139.5" x2="206" y2="139.5" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3044" x1="0" y1="155" x2="206" y2="155" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG3033" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine3046" x1="0" y1="155" x2="206" y2="155" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine3045" x1="0" y1="1" x2="0" y2="155" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG3011" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG3012" class="apexcharts-series" seriesName="Sales" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath3019" d="M 0 155L 0 82.66666666666667C 12.016666666666667 82.66666666666667 22.31666666666667 25.833333333333343 34.333333333333336 25.833333333333343C 46.35 25.833333333333343 56.650000000000006 62 68.66666666666667 62C 80.68333333333334 62 90.98333333333333 0 103 0C 115.01666666666667 0 125.31666666666668 56.83333333333333 137.33333333333334 56.83333333333333C 149.35 56.83333333333333 159.65 20.666666666666657 171.66666666666666 20.666666666666657C 183.68333333333334 20.666666666666657 193.98333333333332 56.83333333333333 206 56.83333333333333C 206 56.83333333333333 206 56.83333333333333 206 155M 206 56.83333333333333z" fill="url(#SvgjsLinearGradient3015)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskgrgf9tf1)" pathTo="M 0 155L 0 82.66666666666667C 12.016666666666667 82.66666666666667 22.31666666666667 25.833333333333343 34.333333333333336 25.833333333333343C 46.35 25.833333333333343 56.650000000000006 62 68.66666666666667 62C 80.68333333333334 62 90.98333333333333 0 103 0C 115.01666666666667 0 125.31666666666668 56.83333333333333 137.33333333333334 56.83333333333333C 149.35 56.83333333333333 159.65 20.666666666666657 171.66666666666666 20.666666666666657C 183.68333333333334 20.666666666666657 193.98333333333332 56.83333333333333 206 56.83333333333333C 206 56.83333333333333 206 56.83333333333333 206 155M 206 56.83333333333333z" pathFrom="M -1 155L -1 155L 34.333333333333336 155L 68.66666666666667 155L 103 155L 137.33333333333334 155L 171.66666666666666 155L 206 155"></path><path id="SvgjsPath3020" d="M 0 82.66666666666667C 12.016666666666667 82.66666666666667 22.31666666666667 25.833333333333343 34.333333333333336 25.833333333333343C 46.35 25.833333333333343 56.650000000000006 62 68.66666666666667 62C 80.68333333333334 62 90.98333333333333 0 103 0C 115.01666666666667 0 125.31666666666668 56.83333333333333 137.33333333333334 56.83333333333333C 149.35 56.83333333333333 159.65 20.666666666666657 171.66666666666666 20.666666666666657C 183.68333333333334 20.666666666666657 193.98333333333332 56.83333333333333 206 56.83333333333333" fill="none" fill-opacity="1" stroke="#00ab55" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskgrgf9tf1)" pathTo="M 0 82.66666666666667C 12.016666666666667 82.66666666666667 22.31666666666667 25.833333333333343 34.333333333333336 25.833333333333343C 46.35 25.833333333333343 56.650000000000006 62 68.66666666666667 62C 80.68333333333334 62 90.98333333333333 0 103 0C 115.01666666666667 0 125.31666666666668 56.83333333333333 137.33333333333334 56.83333333333333C 149.35 56.83333333333333 159.65 20.666666666666657 171.66666666666666 20.666666666666657C 183.68333333333334 20.666666666666657 193.98333333333332 56.83333333333333 206 56.83333333333333" pathFrom="M -1 155L -1 155L 34.333333333333336 155L 68.66666666666667 155L 103 155L 137.33333333333334 155L 171.66666666666666 155L 206 155"></path><g id="SvgjsG3013" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle3052" r="0" cx="0" cy="0" class="apexcharts-marker wwn1ypv12 no-pointer-events" stroke="#ffffff" fill="#00ab55" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG3014" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine3047" x1="0" y1="0" x2="206" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine3048" x1="0" y1="0" x2="206" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG3049" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG3050" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG3051" class="apexcharts-point-annotations"></g></g><rect id="SvgjsRect3007" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG3030" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG3005" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 80px;"></div><div class="apexcharts-tooltip apexcharts-theme-dark"><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(0, 171, 85);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-dark"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
                            <div class="widget widget-five">

                                <div class="widget-heading">

                                    <a href="javascript:void(0)" class="task-info">

                                        <div class="usr-avatar">
                                            <span>FD</span>
                                        </div>

                                        <div class="w-title">

                                            <h5>Figma Design</h5>
                                            <span>Design Project</span>
                                            
                                        </div>

                                    </a>

                                    <div class="task-action">
                                        <div class="dropdown">
                                            <a class="dropdown-toggle" href="#" role="button" id="pendingTask" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
                                            </a>

                                            <div class="dropdown-menu left" aria-labelledby="pendingTask" style="will-change: transform;">
                                                <a class="dropdown-item" href="javascript:void(0);">View Project</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Edit Project</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Mark as Done</a>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                
                                
                                <div class="widget-content">

                                    <p>Doloribus nisi vel suscipit modi, optio ex repudiandae voluptatibus officiis commodi.</p>

                                    <div class="progress-data">

                                        <div class="progress-info">
                                            <div class="task-count"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-square"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg><p>5 Tasks</p></div>
                                            <div class="progress-stats"><p>86.2%</p></div>
                                        </div>
                                        
                                        <div class="progress">
                                            <div class="progress-bar bg-primary" role="progressbar" style="width: 65%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        
                                    </div>

                                    <div class="meta-info">

                                        <div class="due-time">
                                            <p><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg> 3 Days Left</p>
                                        </div>


                                        <div class="avatar--group">

                                            <div class="avatar translateY-axis more-group">
                                                <span class="avatar-title">+6</span>
                                            </div>
                                            <div class="avatar translateY-axis">
                                                <img alt="avatar" src="../src/assets/img/profile-8.jpeg">
                                            </div>
                                            <div class="avatar translateY-axis">
                                                <img alt="avatar" src="../src/assets/img/profile-12.jpeg">
                                            </div>
                                            <div class="avatar translateY-axis">
                                                <img alt="avatar" src="../src/assets/img/profile-19.jpeg">
                                            </div>
                                            
                                        </div>

                                    </div>
                                    

                                </div>

                            </div>

                        </div>

                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
                            <div class="widget widget-card-one">
                                <div class="widget-content">

                                    <div class="media">
                                        <div class="w-img">
                                            <img src="../src/assets/img/profile-19.jpeg" alt="avatar">
                                        </div>
                                        <div class="media-body">
                                            <h6>Jimmy Turner</h6>
                                            <p class="meta-date-time">Monday, May 18</p>
                                        </div>
                                    </div>

                                    <p>"Duis aute irure dolor" in reprehenderit in voluptate velit esse cillum "dolore eu fugiat" nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>

                                    <div class="w-action">
                                        <div class="card-like">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-thumbs-up"><path d="M14 9V5a3 3 0 0 0-3-3l-4 9v11h11.28a2 2 0 0 0 2-1.7l1.38-9a2 2 0 0 0-2-2.3zM7 22H4a2 2 0 0 1-2-2v-7a2 2 0 0 1 2-2h3"></path></svg>
                                            <span>551 Likes</span>
                                        </div>

                                        <div class="read-more">
                                            <a href="javascript:void(0);">Read More <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevrons-right"><polyline points="13 17 18 12 13 7"></polyline><polyline points="6 17 11 12 6 7"></polyline></svg></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
                            <div class="widget widget-card-two">
                                <div class="widget-content">

                                    <div class="media">
                                        <div class="w-img">
                                            <img src="../src/assets/img/g-8.png" alt="avatar">
                                        </div>
                                        <div class="media-body">
                                            <h6>Dev Summit - New York</h6>
                                            <p class="meta-date-time">Bronx, NY</p>
                                        </div>
                                    </div>

                                    <div class="card-bottom-section">
                                        <h5>4 Members Going</h5>
                                        <div class="img-group">
                                            <img src="../src/assets/img/profile-19.jpeg" alt="avatar">
                                            <img src="../src/assets/img/profile-6.jpeg" alt="avatar">
                                            <img src="../src/assets/img/profile-8.jpeg" alt="avatar">
                                            <img src="../src/assets/img/profile-3.jpeg" alt="avatar">
                                        </div>
                                        <a href="javascript:void(0);" class="btn _effect--ripple waves-effect waves-light">View Details</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
@endsection
@section('js_code')
@endsection
