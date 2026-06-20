# GPT Image 2 提示词 —— 一个 Claude Skill

> 把模糊的出图想法，变成**可复现的、生产级的** GPT Image 2(OpenAI 文生图 / 图生图模型)提示词。本项目是一个 [Claude Skill](https://www.anthropic.com/news/skills)，把社区上百个逆向拆解的案例蒸馏成一套结构化方法论。

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Claude Skill](https://img.shields.io/badge/type-Claude%20Skill-8A63D2.svg)](https://www.anthropic.com/news/skills)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Version](https://img.shields.io/badge/version-0.1.0-blue.svg)](CHANGELOG.md)

English: [README.md](README.md)

---

## 为什么做这个

大多数"awesome 提示词"库就是一堆一次性案例——需求稍微一变就又开始玄学抽卡。这个 Skill 反过来：把案例背后的规律压成**结构化协议**+开箱即用的场景配方，让 Claude 针对你的具体任务写出一条靠谱的 GPT Image 2 提示词，并告诉你每一部分为什么这么写。

核心认知转变：**别写散文式的愿望，要写结构化的规格。** GPT Image 2 能遵循又长又分层的指令，所以瓶颈不再是"能不能出图"，而是"你能不能描述到可复现"。

## 里面有什么

```
gpt-image-2-prompting/
├── SKILL.md                  核心方法：模型强项、6 段协议、通用法则、
│                             国际化、图生图、系列批量编排、运行参数
└── references/
    ├── categories.md         需求路由 —— 产物原型 → 模板 + 配方
    ├── templates.md          13 类通用模板 —— 散文 + JSON + 避坑指南
    ├── scene-cookbook.md     29 个优化过的场景配方，每个都点明"关键技巧"
    ├── style-library.md      可拼装组件库：画幅、镜头、胶片型号、光线、
    │                         配色、材质、画风、构图、写实增强
    └── troubleshooting.md     故障排查表：症状 → 病因 → 修法
```

### 6 段提示词协议
任何一条好提示词（散文或 JSON）都由这几块组成，顺序固定为 意图 → 结构 → 风格 → 约束：

1. **意图** —— 这是什么产物、用来干嘛
2. **主体** —— 核心元素，拆解成具体可观察的属性
3. **构图** —— 画幅、版式/网格、模块数量、镜头、焦点层级
4. **文字** —— 要出现的**精确**字符串，各自标注角色 + 拼写/可读/语言锁
5. **风格** —— 媒介、笔触/渲染、材质、配色体系、光线
6. **约束** —— 明确的负面词与禁止元素

### GPT Image 2 的过人之处（以及 Skill 如何利用）
- **文字渲染** —— 准确出字（中英俄）→ *把字面字符串写死*
- **角色一致性** —— 跨场景同一个人 → *先写一致性契约；要严格锁脸用参考图*
- **结构化设计** —— 信息图、爆炸图、网格 → *指定精确数量和骨架*
- **风格灵魂复刻** —— 抓住美学的"魂" → *点名风格或描述其手法*
- **世界知识** —— 真实地点、指名的游戏/App/品牌 → *直接点名以复刻其外观*
- **指令遵循** —— 越详细越好（强于短提示）→ *尽管具体、尽管苛刻*
- **照片级写实** —— 与真照片/截图难辨 → *用相机/胶片术语 + 加瑕疵*

## 安装

**Claude Code / 读取 skills 目录的客户端**
```bash
git clone https://github.com/JacksonTai2007/gpt-image-2-prompting-skill.git
cp -r gpt-image-2-prompting-skill/gpt-image-2-prompting ~/.claude/skills/
# 重启 Claude Code 会话
```

**Claude.ai / Claude 桌面 App**
下载 [`dist/gpt-image-2-prompting.skill`](dist/gpt-image-2-prompting.skill)，在 **设置 → 能力/Skills** 里上传。

> Skill 的可用性与具体菜单名称随套餐和 App 版本不同，找不到入口时请查 Anthropic 最新文档。

## 怎么用

装好后，只要你提到出图提示词相关需求，它就会自动触发。例如：

- "给我写一条 GPT Image 2 提示词，做极简智能手表发布海报，标语 'Time, refined'。"
- "做一组 Instagram 美女写真提示词，同一个人、6 个场景。"
- "我的 AI 图按钮上老是乱码，帮我改提示词。"
- "把这张角色设定图变成官方三视图设定表。"（图生图）

你会拿到一条结构化提示词（散文或 JSON），外加每个区块背后的思路，方便自己改。

### 两个设计要点
- **国际化**：不写死任何人种默认值。涉及人物且未指定外貌时，跟随场景文化语境，否则按用户语言/地区匹配，并始终把外貌做成"一键可改"的变量。
- **系列**：要"一组"图时产出**一条批量编排提示词**（"N 张独立图、不要拼网格"），并如实说明：不带参考图时，跨次生成只能做到"接近一致"而非"完全相同"。

## 致谢

本 Skill 为原创整理，但规律来自对优秀社区提示词库的研究。特别感谢（部分）：
[freestylefly/awesome-gpt-image-2](https://github.com/freestylefly/awesome-gpt-image-2)、
[Anil-matcha/Awesome-GPT-Image-2-API-Prompts](https://github.com/Anil-matcha/Awesome-GPT-Image-2-API-Prompts)、
[YouMind-OpenLab/awesome-gpt-image-2](https://github.com/YouMind-OpenLab/awesome-gpt-image-2)、
[bubblesslayyer-cmd/Awesome-GPT-Image-2-OpenAi](https://github.com/bubblesslayyer-cmd/Awesome-GPT-Image-2-OpenAi)，
以及这些库所收集的 X 平台创作者。部分上游库采用 CC BY 4.0，本项目以同样精神致谢。若你是源作者、希望更正或下架，请提交 issue。

本项目与 OpenAI、Anthropic 无隶属或背书关系。"GPT Image" 是 OpenAI 的产品，"Claude" 是 Anthropic 的产品。

## 贡献

欢迎 PR，见 [CONTRIBUTING.md](CONTRIBUTING.md)。好的贡献：新增高价值场景配方（附让它成立的关键技巧）、更精准的避坑修法、新的风格组件。

## 许可

[MIT](LICENSE) —— 随便用，保留版权行即可。想要零条件？换成 CC0 也行，这些内容乐意进入公共领域。
