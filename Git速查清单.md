---
title: git速查清单
tags:
  - git
  - GitHub
  - 速查清单
author: 我
date: 2026-01-27 12:09:57
modify: 2026-01-27 12:18:10
---
[目录](#目录)
- [1. 开始一个项目](#1-开始一个项目)
  - [1.1 初始化](#11-初始化)
  - [1.2 克隆](#12-克隆)
    - [1.2.1 浅克隆](#121-浅克隆)
    - [1.2.2 稀疏检出](#122-稀疏检出)
      - [1.2.2.1 设置检出的文件/路径](#1221-设置检出的文件路径)
      - [1.2.2.2 查看当前稀疏检出规则](#1222-查看当前稀疏检出规则)
      - [1.2.2.3 禁用稀疏检出（恢复完整检出）](#1223-禁用稀疏检出恢复完整检出)
      - [1.2.2.4 同步上游更新](#1224-同步上游更新)
- [2. 基础操作](#2-基础操作)
  - [2.1 添加](#21-添加)
    - [2.1.1 添加被忽略的文件](#211-添加被忽略的文件)
  - [2.2 提交](#22-提交)
    - [2.2.1 自动暂存已跟踪文件](#221-自动暂存已跟踪文件)
    - [2.2.2 修改最后一次提交（补充变更 / 修正提交说明）](#222-修改最后一次提交补充变更--修正提交说明)
  - [2.3 状态](#23-状态)
    - [2.3.1 简短格式](#231-简短格式)
  - [2.4 恢复](#24-恢复)
    - [2.4.1 恢复被修改的跟踪文件](#241-恢复被修改的跟踪文件)
    - [2.4.2 取消暂存](#242-取消暂存)
    - [2.4.3 从指定版本恢复文件](#243-从指定版本恢复文件)
    - [2.4.4 恢复到工作区](#244-恢复到工作区)
    - [2.4.5 恢复到暂存区](#245-恢复到暂存区)
  - [2.5 重置](#25-重置)
    - [2.5.1 移动 HEAD 指针](#251-移动-head-指针)
    - [2.5.2 重置暂存区（与 HEAD 保持一致）](#252-重置暂存区与-head-保持一致)
    - [2.5.3 重置暂存区和工作区（与 HEAD 保持一致）](#253-重置暂存区和工作区与-head-保持一致)
- [3. 分支](#3-分支)
- [4. 拉取](#4-拉取)
  - [4.1 从远程下载并合并](#41-从远程下载并合并)
  - [4.2 从远程下载更新](#42-从远程下载更新)
  - [4.3 合并远程更新到本地](#43-合并远程更新到本地)
- [5. 推送](#5-推送)
  - [5.1 推送到远程](#51-推送到远程)
  - [5.2 强制推送](#52-强制推送)

## 1. 开始一个项目
### 1.1 初始化
```shell
git init
```
### 1.2 克隆
```shell
git clone <url> <dir>
```
#### 1.2.1 浅克隆
```shell
git clone --depth=1 <url>
```
#### 1.2.2 稀疏检出
```shell
git clone --filter=blob:none --sparse <url>
```
##### 1.2.2.1 设置检出的文件/路径
```shell
git sparse-checkout add dir1/ dir2/subdir/ # 可以指定多个目录
```
##### 1.2.2.2 查看当前稀疏检出规则
```shell
git sparse-checkout list
```
##### 1.2.2.3 禁用稀疏检出（恢复完整检出）
```shell
git sparse-checkout disable
```
##### 1.2.2.4 同步上游更新
```shell
git fetch origin && git rebase origin/master
```
**浅克隆同步上游更新**
```shell
#浅克隆
git fetch origin --depth=1 && git reset --hard origin/main
```
## 2. 基础操作
### 2.1 添加
```
git add <file_neme/dir>
```
#### 2.1.1 添加被忽略的文件
```shell
git add --force <file_neme/dir>    #添加被忽略的文件
```
### 2.2 提交
```shell
git commit -m "提交说明"
```
#### 2.2.1 自动暂存已跟踪文件
```shell
git commit -am "提交说明"
```
#### 2.2.2 修改最后一次提交（补充变更 / 修正提交说明）
```shell
git commit --amend -m "提交说明"
```
### 2.3 状态
```shell
git status
```
#### 2.3.1 简短格式
```shell
git status -s
```
### 2.4 恢复
```shell
git restore
```
#### 2.4.1 恢复被修改的跟踪文件
```shell
git restore <file_name> #操作不可逆
```
#### 2.4.2 取消暂存
```shell
git restore --staged <file_name>
```
#### 2.4.3 从指定版本恢复文件
```shell
# 从指定版本恢复文件到工作区（不修改暂存区）
git restore --source=<tree> <file_name>
```
#### 2.4.4 恢复到工作区
```shell
git restore --worktree <file_name>
```
#### 2.4.5 恢复到暂存区
```shell
git restore --staged <file_name>
```
### 2.5 重置
#### 2.5.1 移动 HEAD 指针
```shell
git reset --soft HEAD    #不修改暂存区、不修改工作区
```
#### 2.5.2 重置暂存区（与 HEAD 保持一致）
```shell
git reset --mixed HEAD    #（与 HEAD 保持一致）
```
#### 2.5.3 重置暂存区和工作区（与 HEAD 保持一致）
```shell
git reset --hard HEAD    #不可逆，谨慎操作
```
## 3. 分支
- [ ] todo

## 4. 拉取
### 4.1 从远程下载并合并
```shell
git pull origin master
```
### 4.2 从远程下载更新
```shell
git fetch origin
```
### 4.3 合并远程更新到本地
```shell
git merge origin/master
```
## 5. 推送
### 5.1 推送到远程
```shell
git push origin master
```
### 5.2 强制推送
```shell
git push --force origin master
```
