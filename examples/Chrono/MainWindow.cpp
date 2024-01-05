/***************************************************************
QGVCore Sample
Copyright (c) 2014, Bergont Nicolas, All rights reserved.

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 3.0 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library.
***************************************************************/
#include "MainWindow.h"
#include "moc_MainWindow.cpp"
#include "ui_MainWindow.h"
#include "QGVScene.h"
#include "QGVNode.h"
#include "QGVEdge.h"
#include "QGVSubGraph.h"
#include <QMessageBox>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    _scene = new QGVScene("DEMO", this);
    ui->graphicsView->setScene(_scene);

}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::drawGraph()
{
    
    //_scene->loadLayout("digraph test{node [style=filled,fillcolor=white];N1 -> N2;N2 -> N3;N3 -> N4;N4 -> N1;}");
    //_scene->loadLayout("digraph test { n1 [label=\"N1\"]; n2 [label=\"N2\"]; n1 -> n2 [xlabel=\"12\"]; }");
    //_scene->loadLayout(" digraph main { layout = dot rankdir = UD size = \"8.5,11\" center = 1 nodesep = \"0.350000\" ranksep = \"0.400000\" fontsize = 14 mindist=1.0 Stopped [label=\"Stopped\", shape=circle, style=solid] Running [label=\"Running\", shape=circle, style=solid] _init [shape=none] _init -> Stopped Stopped -> Running [xlabel=\"StartStop\n_________\nc:=0\"] Running -> Stopped [xlabel=\"StartStop\"] Running -> Running [xlabel=\"H\n______\nc:=c+1\"] }");
    // ui->graphicsView->setScene(_scene);
    // return;

    //Configure scene attributes
    //_scene->setGraphAttribute("label", "DEMO");

    _scene->setGraphAttribute("rankdir", "UD");
    _scene->setGraphAttribute("nodesep", "0.55");
    _scene->setGraphAttribute("ranksep", "0.95");
    _scene->setGraphAttribute("fontsize", "14");
    _scene->setGraphAttribute("mindist", "1.0");
    _scene->setNodeAttribute("shape", "circle");
    _scene->setNodeAttribute("style", "solid");

    QGVNode *_init = _scene->addNode("");
    _init->setAttribute("shape","none");
    QGVNode *stopped = _scene->addNode("Stopped");
    QGVNode *running = _scene->addNode("Running");

    _scene->addEdge(_init, stopped, "");
    _scene->addEdge(stopped, running, "  StartStop  \n  _________  \n  c:=0  ");
    _scene->addEdge(running, stopped, "  StartStop  ");
    _scene->addEdge(running, running, "  H  \n  ______  \n  c:=c+1  ");
    //_scene->addEdge(running, running,"<<table><tr><td align=center>H</td></tr></table>>"); // HTML not accepted here :(
    _scene->applyLayout();

    ui->graphicsView->fitInView(_scene->sceneRect(), Qt::KeepAspectRatio);
}

