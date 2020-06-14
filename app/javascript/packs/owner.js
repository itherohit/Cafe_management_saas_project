window.onload = function() {

    var chart1 = new CanvasJS.Chart("chartContainer1", {
        animationEnabled: true,
        title: {
            text: "Today's Sale"
        },
        axisY: {
            valueFormatString: "#0,.",
            suffix: "k",
            title: "Income"
        },
        axisX: {
            title: "Items"
        },
        toolTip: {
            shared: true
        },
        data: [{
            type: "stackedArea",
            showInLegend: true,
            toolTipContent: "<span style=\"color:#4F81BC\"><strong>{name}: </strong></span> {y}",
            name: "",
            dataPoints: [
                { x: 1, y: 3000 },
                { x: 2, y: 7000 },
                { x: 3, y: 10000 },
                { x: 4, y: 14000 },
                { x: 5, y: 23000 },
                { x: 6, y: 31000 },
                { x: 7, y: 42000 },
                { x: 8, y: 56000 },
                { x: 9, y: 64000 },
                { x: 10, y: 81000 },
                { x: 11, y: 105000 }
            ]
        }]
    });

    var chart2 = new CanvasJS.Chart("chartContainer2", {
        animationEnabled: true,
        theme: "light2", // "light1", "light2", "dark1", "dark2"
        title: {
            text: "Monthly Sales"
        },
        axisY: {
            title: "Revenue"
        },
        data: [{
            type: "column",
            showInLegend: true,
            legendMarkerColor: "grey",
            legendText: "Month",
            dataPoints: [
                { y: 300878, label: "Jan" },
                { y: 266455, label: "Feb" },
                { y: 169709, label: "Mar" },
                { y: 158400, label: "April" },
                { y: 142503, label: "May" },
                { y: 101500, label: "June" },
                { y: 97800, label: "July" },
                { y: 80000, label: "August" }
            ]
        }]
    });
    chart1.render();
    chart2.render();

}

function myfunction() {
    if (document.getElementById("customers").style.display === "none")
        document.getElementById("customers").style.display = "block";
    else
        document.getElementById("customers").style.display = "none";
}