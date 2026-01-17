local M = {}

M.get = function(palette)
    local p = palette

    local highlights = {}

    local function extend(target, source)
        return vim.tbl_deep_extend("force", target, source)
    end

    highlights = extend(highlights, {
        -- Telescope
        TelescopeNormal = { fg = p.text[800], bg = p.background[100] },
        TelescopeBorder = { fg = p.text[600], bg = p.background[100] },
        TelescopePromptNormal = { fg = p.text[800], bg = p.background[100] },
        TelescopePromptBorder = { fg = p.text[600], bg = p.background[100] },
        TelescopePromptTitle = { fg = p.background[50], bg = p.primary[500] },
        TelescopePromptPrefix = { fg = p.primary[500], bg = p.background[100] },
        TelescopeResultsTitle = { fg = p.background[50], bg = p.secondary[400] },
        TelescopeResultsBorder = { fg = p.text[600], bg = p.background[100] },
        TelescopeSelection = { fg = p.text[800], bg = p.background[200] },
        TelescopeMultiSelection = { fg = p.text[700], bg = p.background[200] },
        TelescopeMatching = { fg = p.primary[500], bold = true },
        TelescopeIconPrefix = { fg = p.secondary[400] },
        TelescopePreviewTitle = { fg = p.background[50], bg = p.success[400] },
        TelescopePreviewBorder = { fg = p.text[600], bg = p.background[100] },
    })

    highlights = extend(highlights, {
        -- NvimTree
        NvimTreeNormal = { fg = p.text[800], bg = p.background[100] },
        NvimTreeNormalNC = { fg = p.text[600], bg = p.background[100] },
        NvimTreeRootFolder = { fg = p.primary[500], bold = true },
        NvimTreeIndentMarker = { fg = p.background[300] },
        NvimTreeSymlink = { fg = p.secondary[400], underline = true },
        NvimTreeFolderIcon = { fg = p.primary[500] },
        NvimTreeFolderArrowOpen = { fg = p.text[600] },
        NvimTreeFolderArrowClosed = { fg = p.text[600] },
        NvimTreeFileIcon = { fg = p.text[600] },
        NvimTreeFileDirty = { fg = p.warning[500] },
        NvimTreeFileNew = { fg = p.text[500] },
        NvimTreeFileDeleted = { fg = p.error[500] },
        NvimTreeExecutableIcon = { fg = p.success[500] },
        NvimTreeSpecialText = { fg = p.accent[500] },
        NvimTreeCursorLine = { bg = p.background[200] },
        NvimTreeCursorLineNr = { fg = p.primary[500], bold = true },
        NvimTreeLineNr = { fg = p.background[400] },
        NvimTreeWinSeparator = { fg = p.background[200], bg = p.background[100] },
    })

    highlights = extend(highlights, {
        -- GitSigns
        GitSignsAdd = { fg = p.success[500] },
        GitSignsAddLn = { bg = p.background[100], fg = p.success[500] },
        GitSignsAddNr = { bg = p.background[100], fg = p.success[500] },
        GitSignsChange = { fg = p.primary[500] },
        GitSignsChangeLn = { bg = p.background[100], fg = p.primary[500] },
        GitSignsChangeNr = { bg = p.background[100], fg = p.primary[500] },
        GitSignsDelete = { fg = p.error[500] },
        GitSignsDeleteLn = { bg = p.background[100], fg = p.error[500] },
        GitSignsDeleteNr = { bg = p.background[100], fg = p.error[500] },
        GitSignsTopdelete = { fg = p.error[500] },
        GitSignsTopdeleteLn = { bg = p.background[100], fg = p.error[500] },
        GitSignsUntracked = { fg = p.info[500] },
        GitSignsUntrackedLn = { bg = p.background[100], fg = p.info[500] },
        GitSignsCurrentLineBlame = { fg = p.text[500], italic = true },
    })

    highlights = extend(highlights, {
        -- nvim-cmp
        CmpItemAbbr = { fg = p.text[700] },
        CmpItemAbbrDeprecated = { fg = p.text[500], strikethrough = true },
        CmpItemAbbrMatch = { fg = p.primary[500], bold = true },
        CmpItemAbbrMatchFuzzy = { fg = p.primary[500], bold = true },
        CmpItemKind = { fg = p.text[600] },
        CmpItemKindClass = { fg = p.secondary[300] },
        CmpItemKindColor = { fg = p.accent[500] },
        CmpItemKindConstant = { fg = p.accent[400] },
        CmpItemKindConstructor = { fg = p.secondary[300] },
        CmpItemKindEnum = { fg = p.secondary[300] },
        CmpItemKindEnumMember = { fg = p.accent[400] },
        CmpItemKindEvent = { fg = p.primary[400] },
        CmpItemKindField = { fg = p.text[800] },
        CmpItemKindFile = { fg = p.text[600] },
        CmpItemKindFolder = { fg = p.text[600] },
        CmpItemKindFunction = { fg = p.secondary[400] },
        CmpItemKindInterface = { fg = p.secondary[300] },
        CmpItemKindKeyword = { fg = p.primary[500] },
        CmpItemKindMethod = { fg = p.secondary[400] },
        CmpItemKindModule = { fg = p.secondary[500] },
        CmpItemKindNamespace = { fg = p.secondary[500] },
        CmpItemKindNull = { fg = p.text[500] },
        CmpItemKindNumber = { fg = p.primary[400] },
        CmpItemKindObject = { fg = p.text[800] },
        CmpItemKindOperator = { fg = p.text[700] },
        CmpItemKindPackage = { fg = p.secondary[500] },
        CmpItemKindProperty = { fg = p.text[800] },
        CmpItemKindReference = { fg = p.text[700] },
        CmpItemKindSnippet = { fg = p.accent[500] },
        CmpItemKindString = { fg = p.accent[300] },
        CmpItemKindStruct = { fg = p.secondary[300] },
        CmpItemKindTypeParameter = { fg = p.secondary[300] },
        CmpItemKindUnit = { fg = p.secondary[400] },
        CmpItemKindValue = { fg = p.text[700] },
        CmpItemKindVariable = { fg = p.text[900] },
        CmpMenu = { fg = p.text[800], bg = p.background[100] },
        CmpMenuSel = { fg = p.background[50], bg = p.primary[500] },
        CmpDoc = { fg = p.text[700], bg = p.background[100] },
        CmpDocSel = { fg = p.background[50], bg = p.primary[500] },
    })

    highlights = extend(highlights, {
        -- WhichKey
        WhichKey = { fg = p.primary[500], bold = true },
        WhichKeyGroup = { fg = p.secondary[400] },
        WhichKeyDesc = { fg = p.text[800] },
        WhichKeyFloat = { fg = p.text[800], bg = p.background[100] },
        WhichKeyValue = { fg = p.text[600] },
    })

    highlights = extend(highlights, {
        -- BufferLine
        BufferLineFill = { bg = p.background[100] },
        BufferLineBackground = { bg = p.background[100], fg = p.text[700] },
        BufferLineBuffer = { bg = p.background[100], fg = p.text[700] },
        BufferLineBufferVisible = { bg = p.background[200], fg = p.text[700] },
        BufferLineSelected = { bg = p.primary[500], fg = p.background[50] },
        BufferLineActive = { bg = p.background[200], fg = p.text[800] },
        BufferLineInactive = { bg = p.background[50], fg = p.text[500] },
        BufferLineAlternate = { bg = p.background[100], fg = p.text[600] },
        BufferLineModified = { bg = p.background[100], fg = p.warning[500] },
        BufferLineModifiedSelected = { bg = p.primary[500], fg = p.background[50] },
        BufferLineModifiedVisible = { bg = p.background[200], fg = p.warning[500] },
        BufferLineDuplicate = { bg = p.background[100], fg = p.text[500], style = { "italic" } },
        BufferLineDuplicateSelected = { bg = p.primary[500], fg = p.background[50], style = { "italic" } },
        BufferLineDuplicateVisible = { bg = p.background[200], fg = p.text[500], style = { "italic" } },
        BufferLineTab = { bg = p.background[100], fg = p.text[600] },
        BufferLineTabSelected = { bg = p.primary[500], fg = p.background[50] },
        BufferLineTabClose = { fg = p.error[500], bg = p.background[100] },
        BufferLineIndicator = { bg = p.background[100], fg = p.primary[500] },
        BufferLineIndicatorSelected = { bg = p.primary[500], fg = p.primary[500] },
        BufferLineSeparator = { bg = p.background[100], fg = p.background[200] },
        BufferLineSeparatorSelected = { bg = p.primary[500], fg = p.primary[500] },
        BufferLineSeparatorVisible = { bg = p.background[200], fg = p.background[200] },
        BufferLineCloseButton = { bg = p.background[100], fg = p.text[500] },
        BufferLineCloseButtonSelected = { bg = p.primary[500], fg = p.background[50] },
        BufferLineCloseButtonVisible = { bg = p.background[200], fg = p.text[500] },
        BufferLinePick = { bg = p.accent[500], fg = p.background[50], style = { "bold", "italic" } },
        BufferLinePickSelected = { bg = p.accent[500], fg = p.background[50], style = { "bold", "italic" } },
        BufferLinePickFocus = { bg = p.accent[500], fg = p.background[50], style = { "bold", "italic" } },
    })

    highlights = extend(highlights, {
        -- Indent Blankline
        IndentBlanklineChar = { fg = p.background[300] },
        IndentBlanklineContextChar = { fg = p.secondary[500] },
        IndentBlanklineIndent1 = { fg = p.background[200] },
        IndentBlanklineIndent2 = { fg = p.background[300] },
        IndentBlanklineIndent3 = { fg = p.background[400] },
        IndentBlanklineIndent4 = { fg = p.background[500] },
        IndentBlanklineIndent5 = { fg = p.background[600] },
        IndentBlanklineIndent6 = { fg = p.text[500] },
        IndentBlanklineScopeChar = { fg = p.secondary[400] },
        IblIndent = { fg = p.background[300] },
        IblScope = { fg = p.secondary[500] },
    })

    highlights = extend(highlights, {
        -- NeoTree
        NeoTreeNormal = { fg = p.text[800], bg = p.background[100] },
        NeoTreeNormalNC = { fg = p.text[600], bg = p.background[100] },
        NeoTreeRootName = { fg = p.primary[500], bold = true },
        NeoTreeDirectoryIcon = { fg = p.primary[500] },
        NeoTreeDirectoryCollapsed = { fg = p.primary[500] },
        NeoTreeDirectoryNode = { fg = p.primary[500] },
        NeoTreeFileName = { fg = p.text[800] },
        NeoTreeFileNameOpened = { fg = p.primary[500] },
        NeoTreeFileIcon = { fg = p.text[600] },
        NeoTreeFileData = { fg = p.text[800] },
        NeoTreeFileOpenedName = { fg = p.primary[500] },
        NeoTreeFileModified = { fg = p.warning[500] },
        NeoTreeFileNew = { fg = p.text[500] },
        NeoTreeFileDeleted = { fg = p.error[500] },
        NeoTreeGitAdded = { fg = p.success[500] },
        NeoTreeGitConflict = { fg = p.error[500] },
        NeoTreeGitDeleted = { fg = p.error[500] },
        NeoTreeGitIgnored = { fg = p.text[500] },
        NeoTreeGitModified = { fg = p.primary[500] },
        NeoTreeGitRenamed = { fg = p.info[500] },
        NeoTreeGitUntracked = { fg = p.info[500] },
        NeoTreeIndentMarker = { fg = p.background[300] },
        NeoTreeCursorLine = { bg = p.background[200] },
        NeoTreeWinSeparator = { fg = p.background[200], bg = p.background[100] },
        NeoTreeStatusLine = { fg = p.text[800], bg = p.background[100] },
        NeoTreeStatusLineNC = { fg = p.text[600], bg = p.background[100] },
        NeoTreeFloatBorder = { fg = p.text[600], bg = p.background[100] },
        NeoTreeFloatTitle = { fg = p.background[50], bg = p.primary[500] },
    })

    highlights = extend(highlights, {
        -- Notify
        NotifyINFO = { fg = p.info[500] },
        NotifyINFOIcon = { fg = p.info[500] },
        NotifyINFOTitle = { fg = p.info[500] },
        NotifyINFOBody = { fg = p.text[800] },
        NotifyWARN = { fg = p.warning[500] },
        NotifyWARNIcon = { fg = p.warning[500] },
        NotifyWARNTitle = { fg = p.warning[500] },
        NotifyWARNBody = { fg = p.text[800] },
        NotifyERROR = { fg = p.error[500] },
        NotifyERRORIcon = { fg = p.error[500] },
        NotifyERRORTitle = { fg = p.error[500] },
        NotifyERRORBody = { fg = p.text[800] },
        NotifyDEBUGBody = { fg = p.text[600] },
        NotifyDEBUGTitle = { fg = p.text[500] },
        NotifyTRACEBody = { fg = p.text[700] },
        NotifyTRACETitle = { fg = p.hint[500] },
        NotifyTRACEIcon = { fg = p.hint[500] },
        NotifyBackground = { bg = p.background[100] },
        NotifyBorder = { fg = p.text[600], bg = p.background[100] },
    })

    highlights = extend(highlights, {
        -- nvim-dap
        DapBreakpoint = { fg = p.error[500] },
        DapBreakpointCondition = { fg = p.warning[500] },
        DapBreakpointRejected = { fg = p.text[500] },
        DapLogPoint = { fg = p.info[500] },
        DapStopped = { fg = p.success[500] },
        DapBreakpointLine = { bg = p.background[100] },
        DapBreakpointNumber = { fg = p.error[500], bg = p.background[100] },
        DapStoppedLine = { bg = p.background[100] },
        DapStoppedNumber = { fg = p.success[500], bg = p.background[100] },
        DapBreakpointIcon = { fg = p.error[500] },
        DapBreakpointSign = { fg = p.error[500] },
        DapStoppedSign = { fg = p.success[500] },
    })

    highlights = extend(highlights, {
        -- nvim-dap-ui
        DapUIBreakpointsCurrentLine = { fg = p.primary[500], bold = true },
        DapUIBreakpointsIcon = { fg = p.error[500] },
        DapUIBreakpointsLine = { fg = p.text[800] },
        DapUIBreakpointsInfo = { fg = p.info[500] },
        DapUIBreakpointsWarning = { fg = p.warning[500] },
        DapUIBreakpointsError = { fg = p.error[500] },
        DapUICurrentFrame = { fg = p.primary[500], bold = true },
        DapUIPlayPause = { fg = p.success[500] },
        DapUIRestart = { fg = p.success[500] },
        DapUIStop = { fg = p.error[500] },
        DapUIUnavailable = { fg = p.text[500] },
        DapUITitle = { fg = p.primary[500], bold = true },
        DapUIWatchesHeader = { fg = p.text[800] },
        DapUIWatchesEmpty = { fg = p.text[500] },
        DapUIWatchesValue = { fg = p.text[800] },
        DapUIWatchesError = { fg = p.error[500] },
        DapUIScopesFrame = { fg = p.text[800] },
        DapUIFrameVariable = { fg = p.text[800] },
        DapUIFrameName = { fg = p.primary[500] },
        DapUIFrameTarget = { fg = p.warning[500] },
        DapUIThread = { fg = p.success[500] },
        DapUIThreadActive = { fg = p.success[500], bold = true },
        DapUIProcess = { fg = p.text[800] },
        DapUIResult = { fg = p.text[800] },
        DapUIDecoration = { fg = p.text[600] },
        DapUIFloatBorder = { fg = p.text[600], bg = p.background[100] },
        DapUIFloatTitle = { fg = p.background[50], bg = p.primary[500] },
    })

    highlights = extend(highlights, {
        -- Trouble
        TroubleNormal = { fg = p.text[800], bg = p.background[100] },
        TroubleText = { fg = p.text[800] },
        TroubleCount = { fg = p.primary[500], bg = p.background[200] },
        TroubleIcon = { fg = p.primary[500] },
        TroubleLocation = { fg = p.text[600] },
        TroubleFile = { fg = p.text[800] },
        TroubleLineNR = { fg = p.text[500] },
        TroubleLineNumberNC = { fg = p.text[500] },
        TroubleIndent = { fg = p.text[500] },
        TroubleSignError = { fg = p.error[500] },
        TroubleSignWarning = { fg = p.warning[500] },
        TroubleSignHint = { fg = p.hint[500] },
        TroubleSignInformation = { fg = p.info[500] },
        TroubleFoldIcon = { fg = p.text[500] },
        TroublePreview = { fg = p.primary[500], bg = p.background[100] },
    })

    highlights = extend(highlights, {
        -- Mason
        MasonNormal = { fg = p.text[800], bg = p.background[100] },
        MasonHeader = { fg = p.background[50], bg = p.primary[500] },
        MasonHeaderSecondary = { fg = p.background[50], bg = p.secondary[500] },
        MasonHighlight = { fg = p.primary[500] },
        MasonHighlightBlock = { fg = p.background[50], bg = p.primary[500] },
        MasonHighlightBlockBold = { fg = p.background[50], bg = p.primary[500], bold = true },
        MasonHighlightSecondary = { fg = p.secondary[500] },
        MasonHighlightBlockSecondary = { fg = p.background[50], bg = p.secondary[500] },
        MasonLink = { fg = p.secondary[500], underline = true },
        MasonMuted = { fg = p.text[500] },
        MasonMutedBlock = { bg = p.background[200], fg = p.text[500] },
        MasonMutedBlockBold = { bg = p.background[200], fg = p.text[500], bold = true },
    })

    highlights = extend(highlights, {
        -- Navic
        NavicIconsFile = { fg = p.text[600] },
        NavicIconsModule = { fg = p.secondary[500] },
        NavicIconsNamespace = { fg = p.text[700] },
        NavicIconsPackage = { fg = p.secondary[500] },
        NavicIconsClass = { fg = p.secondary[300] },
        NavicIconsMethod = { fg = p.secondary[400] },
        NavicIconsProperty = { fg = p.text[800] },
        NavicIconsField = { fg = p.text[800] },
        NavicIconsConstructor = { fg = p.secondary[300] },
        NavicIconsEnum = { fg = p.secondary[300] },
        NavicIconsInterface = { fg = p.secondary[300] },
        NavicIconsStruct = { fg = p.secondary[300] },
        NavicIconsEvent = { fg = p.primary[400] },
        NavicIconsOperator = { fg = p.text[700] },
        NavicIconsTypeParameter = { fg = p.secondary[300] },
        NavicIconsConstant = { fg = p.accent[400] },
        NavicIconsString = { fg = p.accent[300] },
        NavicIconsNumber = { fg = p.primary[400] },
        NavicIconsBoolean = { fg = p.primary[400] },
        NavicIconsArray = { fg = p.primary[400] },
        NavicIconsObject = { fg = p.text[800] },
        NavicIconsKey = { fg = p.primary[500] },
        NavicIconsNull = { fg = p.text[500] },
        NavicIconsEnumMember = { fg = p.accent[400] },
        NavicIconsComponent = { fg = p.accent[500] },
        NavicIconsFragment = { fg = p.hint[500] },
        NavicIconsSignature = { fg = p.accent[500] },
        NavicIconsDefaultFile = { fg = p.text[600] },
        NavicIconsDefaultFolder = { fg = p.text[600] },
        NavicIconsOpenFolder = { fg = p.primary[500] },
        NavicIconsFolder = { fg = p.primary[500] },
        NavicIconsRootFolder = { fg = p.primary[500], bold = true },
        NavicIconsEmptyFolder = { fg = p.text[600] },
        NavicIconsHiddenFolder = { fg = p.text[600] },
        NavicText = { fg = p.text[800] },
        NavicSeperator = { fg = p.text[600] },
    })

    highlights = extend(highlights, {
        -- LspSignature
        LspSignatureActiveParameter = { bg = p.background[200], fg = p.primary[500] },
        LspSignatureDocumentation = { fg = p.text[700], bg = p.background[100] },
    })

    highlights = extend(highlights, {
        -- vim-illuminate
        IlluminatedWordText = { bg = p.background[200] },
        IlluminatedWordRead = { bg = p.background[200] },
        IlluminatedWordWrite = { bg = p.background[200] },
    })

    highlights = extend(highlights, {
        -- Aerial
        AerialNormal = { fg = p.text[800], bg = p.background[100] },
        AerialNormalNC = { fg = p.text[600], bg = p.background[100] },
        AerialDot = { fg = p.primary[500] },
        AerialLine = { fg = p.primary[500], bold = true },
        AerialSymbol = { fg = p.secondary[400] },
        AerialFileIcon = { fg = p.text[600] },
        AerialFolderIcon = { fg = p.primary[500] },
        AerialArray = { fg = p.primary[400] },
        AerialBoolean = { fg = p.primary[400] },
        AerialClass = { fg = p.secondary[300] },
        AerialConstant = { fg = p.accent[400] },
        AerialConstructor = { fg = p.secondary[300] },
        AerialEnum = { fg = p.secondary[300] },
        AerialEnumMember = { fg = p.accent[400] },
        AerialEvent = { fg = p.primary[400] },
        AerialField = { fg = p.text[800] },
        AerialFunction = { fg = p.secondary[400] },
        AerialInterface = { fg = p.secondary[300] },
        AerialKey = { fg = p.primary[500] },
        AerialMethod = { fg = p.secondary[400] },
        AerialNamespace = { fg = p.secondary[500] },
        AerialNull = { fg = p.text[500] },
        AerialNumber = { fg = p.primary[400] },
        AerialObject = { fg = p.text[800] },
        AerialOperator = { fg = p.text[700] },
        AerialPackage = { fg = p.secondary[500] },
        AerialProperty = { fg = p.text[800] },
        AerialString = { fg = p.accent[300] },
        AerialStruct = { fg = p.secondary[300] },
        AerialTypeParameter = { fg = p.secondary[300] },
        AerialVariable = { fg = p.text[900] },
    })

    highlights = extend(highlights, {
        -- Alpha
        AlphaHeader = { fg = p.primary[500], bold = true },
        AlphaHeaderLabel = { fg = p.primary[500] },
        AlphaPrefix = { fg = p.secondary[500] },
        AlphaButton = { fg = p.text[600] },
        AlphaButtonShortcut = { fg = p.accent[500], bold = true },
        AlphaButtonDescription = { fg = p.text[600] },
        AlphaFooter = { fg = p.text[500], italic = true },
        AlphaShortcut = { fg = p.text[500], bold = true },
    })

    highlights = extend(highlights, {
        -- Dashboard
        DashboardHeader = { fg = p.primary[500], bold = true },
        DashboardCenter = { fg = p.text[800] },
        DashboardFooter = { fg = p.text[500], italic = true },
        DashboardShortCut = { fg = p.secondary[500], bold = true },
        DashboardKey = { fg = p.warning[500], bold = true },
        DashboardIcon = { fg = p.primary[500], bold = true },
    })

    highlights = extend(highlights, {
        -- Flash
        FlashBackdrop = { fg = p.text[500] },
        FlashMatch = { fg = p.primary[500], bg = p.background[200] },
        FlashCurrent = { fg = p.primary[500], bg = p.background[300], bold = true },
        FlashLabel = { fg = p.background[50], bg = p.primary[500], bold = true },
    })

    highlights = extend(highlights, {
        -- FzfLua
        FzfLuaNormal = { fg = p.text[800], bg = p.background[100] },
        FzfLuaBorder = { fg = p.text[600], bg = p.background[100] },
        FzfLuaTitle = { fg = p.background[50], bg = p.primary[500] },
        FzfLuaPromptText = { fg = p.primary[500], bg = p.background[100] },
        FzfLuaPromptPrefix = { fg = p.warning[500], bg = p.background[100] },
        FzfLuaPromptChar = { fg = p.primary[500], bg = p.background[100] },
        FzfLuaCursor = { fg = p.background[50], bg = p.primary[500] },
        FzfLuaCursorOffset = { fg = p.primary[500], bold = true },
        FzfLuaSearch = { fg = p.warning[500], bg = p.background[200] },
        FzfLuaMatch = { fg = p.primary[500], bold = true },
        FzfLuaTitleSelected = { fg = p.background[50], bg = p.primary[500] },
        FzfLuaBorderSelected = { fg = p.primary[500], bg = p.primary[500] },
        FzfLuaCursorSelected = { fg = p.background[50], bg = p.primary[500] },
        FzfLuaMatchSelected = { fg = p.primary[500], bold = true },
        FzfLuaScrollBarFull = { fg = p.primary[500] },
        FzfLuaScrollBarEmpty = { fg = p.background[300] },
        FzfLuaHeaderBind = { fg = p.warning[500], bold = true },
        FzfLuaHeaderText = { fg = p.text[700] },
    })

    highlights = extend(highlights, {
        -- Leap
        LeapMatch = { fg = p.background[50], bg = p.primary[500], bold = true },
        LeapLabelPrimary = { fg = p.background[50], bg = p.primary[500], bold = true },
        LeapLabelSecondary = { fg = p.background[50], bg = p.secondary[500], bold = true },
        LeapBackdrop = { fg = p.text[500] },
        LeapNoMatch = { fg = p.error[500], bg = p.background[200] },
    })

    highlights = extend(highlights, {
        -- Headlines
        Headline1 = { fg = p.primary[500], bg = p.background[100], bold = true },
        Headline2 = { fg = p.secondary[500], bg = p.background[100], bold = true },
        Headline3 = { fg = p.accent[500], bg = p.background[100], bold = true },
        Headline4 = { fg = p.info[500], bg = p.background[100], bold = true },
        Headline5 = { fg = p.success[500], bg = p.background[100], bold = true },
        Headline6 = { fg = p.warning[500], bg = p.background[100], bold = true },
        Headline7 = { fg = p.error[500], bg = p.background[100], bold = true },
        Headline8 = { fg = p.hint[500], bg = p.background[100], bold = true },
        Headline9 = { fg = p.text[600], bg = p.background[100], bold = true },
        HeadlineCode = { bg = p.background[200] },
        HeadlineQuote = { fg = p.text[600] },
    })

    highlights = extend(highlights, {
        -- Render Markdown
        RenderMarkdownH1 = { fg = p.primary[500], bg = p.background[100], bold = true },
        RenderMarkdownH2 = { fg = p.secondary[500], bg = p.background[100], bold = true },
        RenderMarkdownH3 = { fg = p.accent[500], bg = p.background[100], bold = true },
        RenderMarkdownH4 = { fg = p.info[500], bg = p.background[100], bold = true },
        RenderMarkdownH5 = { fg = p.success[500], bg = p.background[100], bold = true },
        RenderMarkdownH6 = { fg = p.warning[500], bg = p.background[100], bold = true },
        RenderMarkdownCode = { bg = p.background[200] },
        RenderMarkdownCodeInline = { bg = p.background[200] },
        RenderMarkdownCodeBlock = { bg = p.background[200] },
        RenderMarkdownLink = { fg = p.secondary[400], underline = true },
        RenderMarkdownLinkText = { fg = p.secondary[400], underline = true },
        RenderMarkdownLinkDelimiter = { fg = p.text[500] },
        RenderMarkdownListBullet = { fg = p.primary[500] },
        RenderMarkdownOrderedList = { fg = p.primary[500] },
        RenderMarkdownBlockquote = { fg = p.text[600] },
        RenderMarkdownRule = { fg = p.background[300] },
        RenderMarkdownTable = { fg = p.text[700] },
        RenderMarkdownTableHead = { fg = p.text[600], bg = p.background[200] },
        RenderMarkdownTableRow = { fg = p.text[700] },
        RenderMarkdownTableCell = { fg = p.text[700] },
        RenderMarkdownHorizontalRule = { fg = p.background[300] },
        RenderMarkdownTickBlock = { fg = p.text[500] },
        RenderMarkdownInfo = { fg = p.info[500] },
        RenderMarkdownSuccess = { fg = p.success[500] },
        RenderMarkdownWarning = { fg = p.warning[500] },
        RenderMarkdownError = { fg = p.error[500] },
    })

    highlights = extend(highlights, {
        -- Noice
        NoiceCmdlinePopup = { fg = p.text[800], bg = p.background[100] },
        NoiceCmdlinePopupBorder = { fg = p.text[600], bg = p.background[100] },
        NoiceCmdlinePopupTitle = { fg = p.primary[500], bg = p.background[100] },
        NoiceCmdlineIcon = { fg = p.primary[500], bg = p.background[100] },
        NoiceCmdlineIconCmd = { fg = p.warning[500], bg = p.background[100] },
        NoiceCmdlineIconSearch = { fg = p.primary[500], bg = p.background[100] },
        NoiceCmdlineIconFilter = { fg = p.hint[500], bg = p.background[100] },
        NoiceCmdlinePrompt = { fg = p.primary[500], bg = p.background[100] },
        NoiceCmdlineBorder = { fg = p.text[600], bg = p.background[100] },
        NoiceConfirm = { fg = p.text[800], bg = p.background[100] },
        NoiceConfirmBorder = { fg = p.text[600], bg = p.background[100] },
        NoicePopup = { fg = p.text[800], bg = p.background[100] },
        NoicePopupBorder = { fg = p.text[600], bg = p.background[100] },
        NoicePopupmenu = { fg = p.text[800], bg = p.background[100] },
        NoicePopupmenuSel = { fg = p.background[50], bg = p.primary[500] },
        NoicePopupmenuIndex = { fg = p.primary[500], bg = p.background[100] },
        NoicePopupmenuMatch = { fg = p.primary[500], bold = true },
        NoiceNotify = { fg = p.text[800], bg = p.background[100] },
        NoiceNotifyBorder = { fg = p.text[600], bg = p.background[100] },
        NoiceNotifyTitle = { fg = p.primary[500], bg = p.background[100] },
        NoiceNotifyIcon = { fg = p.primary[500], bg = p.background[100] },
        NoiceScrollbar = { fg = p.text[600], bg = p.background[100] },
        NoiceScrollbarThumb = { fg = p.primary[500], bg = p.background[200] },
        NoiceFormatText = { fg = p.text[800] },
        NoiceFormatTextDefault = { fg = p.text[800] },
        NoiceFormatTextKind = { fg = p.primary[500] },
        NoiceFormatTextKindCommand = { fg = p.warning[500] },
        NoiceFormatTextKindFilter = { fg = p.hint[500] },
        NoiceFormatTextKindHeader = { fg = p.secondary[500] },
        NoiceFormatTextTitle = { fg = p.primary[500], bold = true },
        NoiceFormatTextDoc = { fg = p.text[700] },
        NoiceLspProgressClient = { fg = p.text[600] },
        NoiceLspProgressSpinner = { fg = p.primary[500] },
        NoiceLspProgressTitle = { fg = p.primary[500], bold = true },
    })

    highlights = extend(highlights, {
        -- Snacks
        SnacksNormal = { fg = p.text[800], bg = p.background[100] },
        SnacksBorder = { fg = p.text[600], bg = p.background[100] },
        SnacksTitle = { fg = p.primary[500], bg = p.background[100] },
        SnacksSection = { fg = p.secondary[500], bg = p.background[100], bold = true },
        SnacksKey = { fg = p.warning[500], bg = p.background[100] },
        SnacksKeys = { fg = p.primary[500], bg = p.background[100] },
        SnacksIcon = { fg = p.primary[500], bg = p.background[100] },
        SnacksCursor = { fg = p.background[50], bg = p.primary[500] },
        SnacksLineNumber = { fg = p.background[400], bg = p.background[100] },
        SnacksLineNumberCursor = { fg = p.primary[500], bg = p.background[200], bold = true },
        SnacksGitHeader = { fg = p.primary[500], bg = p.background[100], bold = true },
        SnacksGitBranch = { fg = p.warning[500], bg = p.background[100] },
        SnacksGitIconAdd = { fg = p.success[500], bg = p.background[100] },
        SnacksGitIconDelete = { fg = p.error[500], bg = p.background[100] },
        SnacksGitIconChange = { fg = p.primary[500], bg = p.background[100] },
        SnacksGitIconRename = { fg = p.info[500], bg = p.background[100] },
        SnacksNotifierNotification = { fg = p.text[800], bg = p.background[100] },
        SnacksNotifierNotificationTitle = { fg = p.primary[500], bg = p.background[100] },
        SnacksNotifierIcon = { fg = p.primary[500], bg = p.background[100] },
        SnacksNotifierBorder = { fg = p.text[600], bg = p.background[100] },
        SnacksPickerEmoji = { fg = p.accent[500] },
        SnacksPickerFile = { fg = p.text[600] },
        SnacksPickerColor = { fg = p.accent[500] },
        SnacksPickerGitStatus = { fg = p.text[700] },
        SnacksPickerGitStatusHeader = { fg = p.primary[500], bold = true },
        SnacksPickerTerm = { fg = p.success[500] },
    })

    highlights = extend(highlights, {
        -- Diffview
        DiffviewNormal = { fg = p.text[800], bg = p.background[100] },
        DiffviewNormalNC = { fg = p.text[600], bg = p.background[100] },
        DiffviewBorder = { fg = p.text[600], bg = p.background[100] },
        DiffviewBorderNC = { fg = p.text[600], bg = p.background[100] },
        DiffviewTitle = { fg = p.primary[500], bold = true },
        DiffviewTitleNC = { fg = p.text[600] },
        DiffviewFilePanelFileName = { fg = p.text[800] },
        DiffviewFilePanelFileNameNC = { fg = p.text[600] },
        DiffviewFilePanelRootPath = { fg = p.text[500] },
        DiffviewFilePanelPath = { fg = p.text[600] },
        DiffviewFilePanelStatsAdded = { fg = p.success[500] },
        DiffviewFilePanelStatsDeleted = { fg = p.error[500] },
        DiffviewFilePanelStatsUnmerged = { fg = p.warning[500] },
        DiffviewFilePanelStatsChanged = { fg = p.primary[500] },
        DiffviewFilePanelSelect = { fg = p.primary[500], bold = true },
        DiffviewFilePanelInsertions = { fg = p.success[500] },
        DiffviewFilePanelDeletions = { fg = p.error[500] },
        DiffviewStatus = { fg = p.text[700] },
        DiffviewStatusAdded = { fg = p.success[500] },
        DiffviewStatusModified = { fg = p.primary[500] },
        DiffviewStatusDeleted = { fg = p.error[500] },
        DiffviewStatusRenamed = { fg = p.info[500] },
        DiffviewStatusUnmerged = { fg = p.warning[500] },
        DiffviewStatusUntracked = { fg = p.text[500] },
        DiffviewStatusTypeChange = { fg = p.secondary[500] },
        DiffviewStatusUnknown = { fg = p.text[500] },
        DiffviewFold = { fg = p.text[500] },
        DiffviewFoldExpanded = { fg = p.primary[500] },
        DiffviewFoldCollapsed = { fg = p.text[500] },
        DiffviewAdded = { fg = p.success[500], bg = p.background[100] },
        DiffviewAddedInline = { fg = p.success[500], bg = p.background[200] },
        DiffviewRemoved = { fg = p.error[500], bg = p.background[100] },
        DiffviewRemovedInline = { fg = p.error[500], bg = p.background[200] },
        DiffviewChanged = { fg = p.primary[500], bg = p.background[100] },
        DiffviewChangedInline = { fg = p.primary[500], bg = p.background[200] },
        DiffviewUnchanged = { fg = p.text[800], bg = p.background[100] },
        DiffviewUnchangedText = { fg = p.text[800], bg = p.background[200] },
        DiffviewDiffAdd = { fg = p.success[500], bg = p.background[100] },
        DiffviewDiffDelete = { fg = p.error[500], bg = p.background[100] },
    })

    highlights = extend(highlights, {
        -- Neogit
        NeogitNormal = { fg = p.text[800], bg = p.background[100] },
        NeogitNormalNC = { fg = p.text[600], bg = p.background[100] },
        NeogitHeader = { fg = p.text[800], bg = p.background[100] },
        NeogitHeaderNC = { fg = p.text[600], bg = p.background[100] },
        NeogitDiffAdd = { fg = p.success[500], bg = p.background[100] },
        NeogitDiffAddHighlight = { fg = p.success[500], bg = p.background[200] },
        NeogitDiffDelete = { fg = p.error[500], bg = p.background[100] },
        NeogitDiffDeleteHighlight = { fg = p.error[500], bg = p.background[200] },
        NeogitDiffContext = { fg = p.text[700], bg = p.background[100] },
        NeogitDiffContextHighlight = { fg = p.text[700], bg = p.background[200] },
        NeogitHunkHeader = { fg = p.text[600], bg = p.background[200] },
        NeogitHunkHeaderHighlight = { fg = p.text[600], bg = p.background[300] },
        NeogitBranch = { fg = p.warning[500], bold = true },
        NeogitBranchHead = { fg = p.warning[500] },
        NeogitRemote = { fg = p.primary[500] },
        NeogitStaged = { fg = p.success[500] },
        NeogitUnstaged = { fg = p.primary[500] },
        NeogitUntracked = { fg = p.info[500] },
        NeogitStash = { fg = p.accent[500] },
        NeogitRebaseSwitchTo = { fg = p.primary[500] },
        NeogitRebaseInteractive = { fg = p.accent[500] },
        NeogitConflict = { fg = p.error[500] },
        NeogitCursorLine = { bg = p.background[200] },
        NeogitFold = { fg = p.text[500] },
        NeogitSignature = { fg = p.text[500] },
        NeogitFloat = { fg = p.text[800], bg = p.background[100] },
        NeogitFloatBorder = { fg = p.text[600], bg = p.background[100] },
        NeogitFloatTitle = { fg = p.background[50], bg = p.primary[500] },
    })

    highlights = extend(highlights, {
        -- Mini
        MiniCompletionActiveParameter = { bg = p.background[200], fg = p.primary[500], underline = true },
        MiniCursorword = { bg = p.background[200] },
        MiniCursorwordCurrent = { bg = p.background[300] },
        MiniIndentscopeSymbol = { fg = p.secondary[500] },
        MiniIndentscopePrefix = { fg = p.secondary[500], sp = p.secondary[500] },
        MiniJump = { fg = p.background[50], bg = p.primary[500], bold = true },
        MiniJump2dSpot = { fg = p.primary[500], bold = true, underline = true },
        MiniStarterCurrent = { fg = p.primary[500], bold = true },
        MiniStarterFooter = { fg = p.text[500], italic = true },
        MiniStarterHeader = { fg = p.primary[500], bold = true },
        MiniStarterItem = { fg = p.text[800] },
        MiniStarterItemBullet = { fg = p.text[600] },
        MiniStarterItemPrefix = { fg = p.primary[500] },
        MiniStarterQuery = { fg = p.info[500] },
        MiniStarterSection = { fg = p.secondary[500], bold = true },
        MiniStatuslineDevinfo = { fg = p.text[700], bg = p.background[200] },
        MiniStatuslineFileinfo = { fg = p.text[600], bg = p.background[200] },
        MiniStatuslineModeNormal = { fg = p.background[50], bg = p.primary[400], bold = true },
        MiniStatuslineModeInsert = { fg = p.background[50], bg = p.success[400], bold = true },
        MiniStatuslineModeVisual = { fg = p.background[50], bg = p.accent[400], bold = true },
        MiniStatuslineModeReplace = { fg = p.background[50], bg = p.error[400], bold = true },
        MiniStatuslineModeCommand = { fg = p.background[50], bg = p.warning[400], bold = true },
        MiniSurround = { fg = p.background[50], bg = p.primary[500], bold = true },
        MiniTablineCurrent = { fg = p.background[50], bg = p.primary[500] },
        MiniTablineFill = { bg = p.background[100] },
        MiniTablineHidden = { fg = p.text[600], bg = p.background[100] },
        MiniTablineModifiedCurrent = { fg = p.background[50], bg = p.primary[500] },
        MiniTablineModifiedHidden = { fg = p.warning[500], bg = p.background[100] },
        MiniTablineModifiedVisible = { fg = p.warning[500], bg = p.background[200] },
        MiniTablineTabpagesection = { fg = p.background[50], bg = p.secondary[500] },
        MiniTestEmphasis = { bold = true },
        MiniTestFail = { fg = p.error[500], bold = true },
        MiniTestPass = { fg = p.success[500], bold = true },
        MiniTrailspace = { bg = p.error[500] },
    })

    highlights = extend(highlights, {
        -- BBQ
        BbqNormal = { fg = p.text[800], bg = p.background[100] },
        BbqNormalNC = { fg = p.text[600], bg = p.background[100] },
        BbqCursorLine = { bg = p.background[200] },
        BbqVertSplit = { fg = p.background[200], bg = p.background[100] },
        BbqWinSeparator = { fg = p.background[200], bg = p.background[100] },
        BbqBorder = { fg = p.text[600], bg = p.background[100] },
        BbqTitle = { fg = p.primary[500], bg = p.background[100] },
        BbqDirectory = { fg = p.primary[500], bold = true },
    })

    highlights = extend(highlights, {
        -- Rainbow Delimiters
        RainbowDelimiterRed = { fg = p.error[500] },
        RainbowDelimiterOrange = { fg = p.warning[500] },
        RainbowDelimiterYellow = { fg = p.primary[500] },
        RainbowDelimiterGreen = { fg = p.success[500] },
        RainbowDelimiterBlue = { fg = p.info[500] },
        RainbowDelimiterViolet = { fg = p.accent[500] },
        RainbowDelimiterCyan = { fg = p.secondary[500] },
        RainbowDelimiterPink = { fg = p.hint[500] },
    })

    highlights = extend(highlights, {
        -- Symbols Outline
        SymbolsOutlineNormal = { fg = p.text[800], bg = p.background[100] },
        SymbolsOutlineNormalNC = { fg = p.text[600], bg = p.background[100] },
        SymbolsOutlineConnector = { fg = p.background[300] },
        SymbolsOutlineLine = { fg = p.text[500] },
        SymbolsOutlineLineNC = { fg = p.text[500] },
        SymbolsOutlineComment = { fg = p.text[500], italic = true },
        SymbolsOutlineConstant = { fg = p.accent[400] },
        SymbolsOutlineConstructor = { fg = p.secondary[300] },
        SymbolsOutlineEvent = { fg = p.primary[400] },
        SymbolsOutlineField = { fg = p.text[800] },
        SymbolsOutlineFile = { fg = p.text[600] },
        SymbolsOutlineFunction = { fg = p.secondary[400] },
        SymbolsOutlineInterface = { fg = p.secondary[300] },
        SymbolsOutlineKey = { fg = p.primary[500] },
        SymbolsOutlineMethod = { fg = p.secondary[400] },
        SymbolsOutlineModule = { fg = p.secondary[500] },
        SymbolsOutlineNamespace = { fg = p.text[700] },
        SymbolsOutlineNull = { fg = p.text[500] },
        SymbolsOutlineNumber = { fg = p.primary[400] },
        SymbolsOutlineObject = { fg = p.text[800] },
        SymbolsOutlineOperator = { fg = p.text[700] },
        SymbolsOutlinePackage = { fg = p.secondary[500] },
        SymbolsOutlineProperty = { fg = p.text[800] },
        SymbolsOutlineString = { fg = p.accent[300] },
        SymbolsOutlineStruct = { fg = p.secondary[300] },
        SymbolsOutlineTypeParameter = { fg = p.secondary[300] },
        SymbolsOutlineVariable = { fg = p.text[900] },
    })

    highlights = extend(highlights, {
        -- Ufo
        UfoCursorFolded = { fg = p.primary[500], bg = p.background[100] },
        UfoFoldedFg = { fg = p.text[600] },
        UfoFoldedBg = { bg = p.background[100] },
        UfoPreviewSbar = { bg = p.background[200] },
        UfoPreviewThumb = { bg = p.primary[500] },
        UfoPreviewRange = { bg = p.background[200] },
        UfoFoldSResultbar = { bg = p.background[200] },
        UfoFoldResultThumb = { bg = p.primary[500] },
        UfoFoldResultLine = { fg = p.primary[500], bold = true },
    })

    highlights = extend(highlights, {
        -- Status Column (statuscol.nvim)
        StatusColumnCursor = { fg = p.primary[500], bold = true },
        StatusColumnCursorLineNr = { fg = p.primary[500], bg = p.background[100], bold = true },
        StatusColumnFill = { bg = p.background[200] },
        StatusColumnFoldClose = { fg = p.text[500], bg = p.background[100] },
        StatusColumnFoldOpen = { fg = p.primary[500], bg = p.background[100] },
        StatusColumnFoldMid = { fg = p.text[500], bg = p.background[100] },
        StatusColumnFoldEnd = { fg = p.text[500], bg = p.background[100] },
        StatusColumnNumber = { fg = p.text[600], bg = p.background[100] },
        StatusColumnNumberNC = { fg = p.text[500], bg = p.background[50] },
        StatusColumnSign = { fg = p.text[600], bg = p.background[100] },
        StatusColumnSignNC = { fg = p.text[500], bg = p.background[50] },
        StatusColumnDiagnosticError = { fg = p.error[500], bg = p.background[100] },
        StatusColumnDiagnosticWarn = { fg = p.warning[500], bg = p.background[100] },
        StatusColumnDiagnosticInfo = { fg = p.info[500], bg = p.background[100] },
        StatusColumnDiagnosticHint = { fg = p.hint[500], bg = p.background[100] },
        StatusColumnDiagnosticErrorNC = { fg = p.error[500], bg = p.background[50] },
        StatusColumnDiagnosticWarnNC = { fg = p.warning[500], bg = p.background[50] },
        StatusColumnDiagnosticInfoNC = { fg = p.info[500], bg = p.background[50] },
        StatusColumnDiagnosticHintNC = { fg = p.hint[500], bg = p.background[50] },
        StatusColumnGitSign = { fg = p.text[600], bg = p.background[100] },
        StatusColumnGitSignNC = { fg = p.text[500], bg = p.background[50] },
    })

    highlights = extend(highlights, {
        -- Dropbar
        DropbarNormal = { fg = p.text[800], bg = p.background[100] },
        DropbarNormalNC = { fg = p.text[600], bg = p.background[100] },
        DropbarHover = { fg = p.primary[500], bg = p.background[200] },
        DropbarHoverNC = { fg = p.primary[500], bg = p.background[200] },
        DropbarSelect = { fg = p.background[50], bg = p.primary[500] },
        DropbarSelectNC = { fg = p.background[50], bg = p.primary[500] },
        DropbarString = { fg = p.accent[300] },
        DropbarField = { fg = p.text[700] },
        DropbarHint = { fg = p.hint[500], bg = p.background[100] },
        DropbarHintNC = { fg = p.hint[500], bg = p.background[100] },
        DropbarKind = { fg = p.secondary[400] },
        DropbarMenu = { fg = p.text[800], bg = p.background[100] },
        DropbarMenuNC = { fg = p.text[600], bg = p.background[100] },
        DropbarPreview = { fg = p.text[800], bg = p.background[200] },
        DropbarPreviewNC = { fg = p.text[600], bg = p.background[200] },
        DropbarSymbol = { fg = p.text[600] },
    })

    highlights = extend(highlights, {
        -- Overseer
        OverseerNormal = { fg = p.text[800], bg = p.background[100] },
        OverseerNormalNC = { fg = p.text[600], bg = p.background[100] },
        OverseerBorder = { fg = p.text[600], bg = p.background[100] },
        OverseerTitle = { fg = p.primary[500], bg = p.background[100], bold = true },
        OverseerComponent = { fg = p.text[700], bg = p.background[100] },
        OverseerComponentBorder = { fg = p.text[600], bg = p.background[100] },
        OverseerComponentTitle = { fg = p.text[600], bg = p.background[100] },
        OverseerTestPass = { fg = p.success[500] },
        OverseerTestFail = { fg = p.error[500] },
        OverseerTestSkip = { fg = p.warning[500] },
        OverseerTaskRunning = { fg = p.primary[500] },
        OverseerTaskSuccess = { fg = p.success[500] },
        OverseerTaskError = { fg = p.error[500] },
        OverseerTaskFailed = { fg = p.error[500], bold = true },
        OverseerTaskPending = { fg = p.text[500] },
        OverseerTaskCancelled = { fg = p.text[500] },
        OverseerTaskUnknown = { fg = p.text[500] },
        OverseerTaskOutput = { fg = p.text[800] },
        OverseerTaskOutputBody = { fg = p.text[700], bg = p.background[200] },
        OverseerTaskTag = { fg = p.accent[500], bg = p.background[100] },
        OverseerTaskTagSuccess = { fg = p.success[500], bg = p.background[100] },
        OverseerTaskTagFailure = { fg = p.error[500], bg = p.background[100] },
        OverseerFocused = { fg = p.primary[500], bold = true },
        OverseerExpanded = { fg = p.text[800] },
        OverseerExpandedNC = { fg = p.text[600] },
        OverseerCollapsed = { fg = p.text[500] },
        OverseerCollapsedNC = { fg = p.text[500] },
    })

    highlights = extend(highlights, {
        -- Telekasten
        TelekastenNormal = { fg = p.text[800], bg = p.background[100] },
        TelekastenNormalNC = { fg = p.text[600], bg = p.background[100] },
        TelekastenTitle = { fg = p.primary[500], bold = true },
        TelekastenTitleLink = { fg = p.secondary[500], bold = true },
        TelekastenHighlight = { fg = p.primary[500], underline = true },
        TelekastenHighlight_dash = { fg = p.primary[500], bold = true },
        TelekastenHighlight_bracket = { fg = p.secondary[500], bold = true },
        TelekastenHighlight_url = { fg = p.info[500], underline = true },
        TelekastenHighlight_tag = { fg = p.hint[500] },
        TelekastenTodo = { fg = p.warning[500], bold = true },
        TelekastenDone = { fg = p.success[500] },
        TelekastenCalendar = { fg = p.text[800] },
        TelekastenCalendarWeek = { fg = p.text[600] },
        TelekastenCalendarDay = { fg = p.text[700] },
        TelekastenCalendarHeader = { fg = p.primary[500] },
        TelekastenCalendarTitle = { fg = p.primary[500] },
        TelekastenCalendarToday = { fg = p.background[50], bg = p.primary[500], bold = true },
        TelekastenLink = { fg = p.secondary[400], underline = true },
        TelekastenLinkWiki = { fg = p.secondary[400], underline = true },
        TelekastenLinkTag = { fg = p.hint[500], underline = true },
        TelekastenLinkSearch = { fg = p.info[500], underline = true },
        TelekastenNeorg = { fg = p.accent[500], underline = true },
        TelekastenComment = { fg = p.text[500], italic = true },
    })

    highlights = extend(highlights, {
        -- Octo
        OctoNormal = { fg = p.text[800], bg = p.background[100] },
        OctoNormalNC = { fg = p.text[600], bg = p.background[100] },
        OctoFloat = { fg = p.text[800], bg = p.background[100] },
        OctoBorder = { fg = p.text[600], bg = p.background[100] },
        OctoTitle = { fg = p.primary[500], bg = p.background[100], bold = true },
        OctoDate = { fg = p.text[700] },
        OctoUser = { fg = p.accent[500] },
        OctoUserMe = { fg = p.primary[500] },
        OctoStatus = { fg = p.text[700] },
        OctoStatusPending = { fg = p.warning[500] },
        OctoStatusApproved = { fg = p.success[500] },
        OctoStatusChangesRequested = { fg = p.warning[500] },
        OctoStatusRejected = { fg = p.error[500] },
        OctoStatusError = { fg = p.error[500] },
        OctoStatusWarn = { fg = p.warning[500] },
        OctoStatusInfo = { fg = p.info[500] },
        OctoLabel = { fg = p.secondary[500], bg = p.background[200] },
        OctoLabelMine = { fg = p.primary[500], bg = p.background[200] },
        OctoComment = { fg = p.text[700], bg = p.background[100] },
        OctoCommentLine = { fg = p.text[700], bg = p.background[100] },
        OctoCommentArg = { fg = p.accent[500] },
        OctoReview = { fg = p.text[600] },
        OctoReviewLine = { fg = p.text[600] },
        OctoReviewComment = { fg = p.text[700], bg = p.background[100] },
        OctoReviewCommentLine = { fg = p.text[700], bg = p.background[100] },
        OctoReviewPending = { fg = p.warning[500] },
        OctoReviewChangesRequested = { fg = p.warning[500] },
        OctoReviewApproved = { fg = p.success[500] },
        OctoReviewRejected = { fg = p.error[500] },
        OctoReaction = { fg = p.primary[500] },
        OctoReactionMe = { fg = p.primary[500], bold = true },
        OctoDirty = { fg = p.warning[500] },
        OctoTicket = { fg = p.accent[500] },
    })

    highlights = extend(highlights, {
        -- Vim Sneak
        Sneak = { fg = p.background[50], bg = p.primary[500], bold = true },
        SneakScope = { bg = p.background[200] },
    })

    highlights = extend(highlights, {
        -- Vim Sandwich
        SandwichNormal = { fg = p.text[800], bg = p.background[200] },
        SandwichNormalNC = { fg = p.text[600], bg = p.background[100] },
        SandwichDelimiter = { fg = p.text[500] },
        SandwichBracket = { fg = p.primary[500] },
        SandwichKind = { fg = p.secondary[500] },
        SandwichReplaced = { fg = p.text[700], strikethrough = true },
    })

    highlights = extend(highlights, {
        -- Fidget
        FidgetTitle = { fg = p.primary[500], bold = true },
        FidgetTask = { fg = p.text[700] },
        FidgetSpinner = { fg = p.primary[500] },
        FidgetSpinning = { fg = p.primary[500], bold = true },
    })

    highlights = extend(highlights, {
        -- HOP
        HopNextKey = { fg = p.primary[500], bold = true },
        HopNextKey1 = { fg = p.secondary[500], bold = true },
        HopNextKey2 = { fg = p.accent[500] },
        HopUnmatched = { fg = p.text[500] },
        HopCursor = { fg = p.primary[500], bold = true },
        HopPreview = { fg = p.background[50], bg = p.primary[500], bold = true },
    })

    highlights = extend(highlights, {
        -- Pounce
        PounceMatch = { fg = p.primary[500], bg = p.background[200] },
        PounceGap = { fg = p.primary[500], bg = p.background[200] },
        PounceAccept = { fg = p.background[50], bg = p.primary[500], bold = true },
        PounceAcceptBest = { fg = p.background[50], bg = p.success[500], bold = true },
        PounceUnmatched = { fg = p.text[500] },
    })

    highlights = extend(highlights, {
        -- Lightspeed
        LightspeedCursor = { fg = p.background[50], bg = p.primary[500] },
        LightspeedLabel = { fg = p.primary[500], bold = true, underline = true },
        LightspeedLabelDistant = { fg = p.secondary[500], bold = true, underline = true },
        LightspeedLabelDistantOverlapped = { fg = p.secondary[400], bold = true, underline = true },
        LightspeedLabelOverlapped = { fg = p.primary[400], bold = true, underline = true },
        LightspeedMaskedChar = { fg = p.text[600], italic = true },
        LightspeedOneCharMatch = { fg = p.success[500], bg = p.background[200], bold = true },
        LightspeedPendingOpChar = { fg = p.primary[500], bg = p.background[200], bold = true },
        LightspeedPendingOpNoOverlap = { fg = p.primary[500], bg = p.background[200] },
        LightspeedQuickSkipGroup = { fg = p.accent[500], bold = true },
        LightspeedShortcut = { fg = p.background[50], bg = p.primary[500], bold = true },
        LightspeedUniqueChar = { fg = p.accent[500], bold = true },
        LightspeedGreyWash = { fg = p.text[500] },
    })

    highlights = extend(highlights, {
        -- Grug Far
        GrugFarNormal = { fg = p.text[800], bg = p.background[100] },
        GrugFarBorder = { fg = p.text[600], bg = p.background[100] },
        GrugFarTitle = { fg = p.primary[500], bg = p.background[100] },
        GrugFarHeader = { fg = p.text[600] },
        GrugFarMatch = { fg = p.primary[500], bg = p.background[200], bold = true },
        GrugFarSub = { fg = p.accent[500], bg = p.background[200] },
        GrugFarAdd = { fg = p.success[500], bg = p.background[200] },
        GrugFarDelete = { fg = p.error[500], bg = p.background[200] },
        GrugFarChange = { fg = p.warning[500], bg = p.background[200] },
        GrugFarLineNr = { fg = p.text[600], bg = p.background[100] },
        GrugFarLineNrNC = { fg = p.text[500], bg = p.background[100] },
        GrugFarCursorLine = { bg = p.background[200] },
        GrugFarCursorLineNr = { fg = p.primary[500], bg = p.background[200], bold = true },
    })

    highlights = extend(highlights, {
        -- Beacon
        Beacon = { fg = p.background[50], bg = p.primary[500] },
    })

    highlights = extend(highlights, {
        -- Colorful Winsep
        ColorfulWinsepNormal = { fg = p.background[300], bg = p.background[100] },
        ColorfulWinsepNC = { fg = p.background[300], bg = p.background[100] },
        ColorfulWinsepCursor = { fg = p.background[50], bg = p.primary[500] },
    })

    highlights = extend(highlights, {
        -- Lir
        LirNormal = { fg = p.text[800], bg = p.background[100] },
        LirDir = { fg = p.primary[500], bold = true },
        LirSymLink = { fg = p.secondary[400], underline = true },
        LirFloatNormal = { fg = p.text[800], bg = p.background[100] },
        LirFloatBorder = { fg = p.text[600], bg = p.background[100] },
        LirFloatTitle = { fg = p.background[50], bg = p.primary[500] },
    })

    highlights = extend(highlights, {
        -- Vim Wiki
        VimwikiNormal = { fg = p.text[800] },
        VimwikiHeader1 = { fg = p.primary[500], bold = true },
        VimwikiHeader2 = { fg = p.secondary[500], bold = true },
        VimwikiHeader3 = { fg = p.accent[500], bold = true },
        VimwikiHeader4 = { fg = p.info[500], bold = true },
        VimwikiHeader5 = { fg = p.success[500], bold = true },
        VimwikiHeader6 = { fg = p.warning[500], bold = true },
        VimwikiLink = { fg = p.secondary[400], underline = true },
        VimwikiLinkKind = { fg = p.text[600] },
        VimwikiPre = { fg = p.text[700], bg = p.background[200] },
        VimwikiPreDelim = { fg = p.text[700], bg = p.background[200] },
        VimwikiPreCode = { fg = p.accent[500], bg = p.background[200] },
        VimwikiBold = { bold = true },
        VimwikiItalic = { italic = true },
        VimwikiStrikeThrough = { strikethrough = true },
        VimwikiCode = { fg = p.accent[500] },
        VimwikiComment = { fg = p.text[500], italic = true },
        VimwikiFootnotes = { fg = p.hint[500] },
        VimwikiHR = { fg = p.background[300] },
    })

    highlights = extend(highlights, {
        -- Neotest
        NeotestNormal = { fg = p.text[800], bg = p.background[100] },
        NeotestBorder = { fg = p.text[600], bg = p.background[100] },
        NeotestTitle = { fg = p.primary[500], bg = p.background[100], bold = true },
        NeotestFocused = { fg = p.primary[500], bg = p.background[200], bold = true },
        NeotestIndent = { fg = p.text[500] },
        NeotestNamespace = { fg = p.secondary[500] },
        NeotestModule = { fg = p.text[700] },
        NeotestName = { fg = p.text[800] },
        NeotestFlaky = { fg = p.warning[500], italic = true },
        NeotestFocused = { fg = p.primary[500], bold = true },
        NeotestSkipped = { fg = p.info[500], italic = true },
        NeotestPass = { fg = p.success[500], bold = true },
        NeotestFail = { fg = p.error[500], bold = true },
        NeotestRunning = { fg = p.primary[500], bold = true },
        NeotestTarget = { fg = p.primary[500], underline = true },
        NeotestTargetIcon = { fg = p.primary[500] },
        NeotestDir = { fg = p.text[600] },
        NeotestFile = { fg = p.text[800] },
        NeotestSpec = { fg = p.text[800] },
        NeotestGroup = { fg = p.text[600] },
        NeotestGroupIcon = { fg = p.text[600] },
        NeotestAdapterName = { fg = p.accent[500], bold = true },
        NeotestUnknown = { fg = p.text[500] },
    })

    highlights = extend(highlights, {
        -- CoC
        CocMenuSel = { fg = p.background[50], bg = p.primary[500] },
        CocSearch = { fg = p.primary[500], bg = p.background[200] },
        CocSelectedText = { fg = p.primary[500], bold = true },
        CocCodeLens = { fg = p.text[500] },
        CocFadeOut = { fg = p.text[500] },
        CocFloatSbar = { bg = p.background[200] },
        CocFloatThumb = { bg = p.primary[500] },
        CocFloatTitle = { fg = p.background[50], bg = p.primary[500] },
        CocFloatBorder = { fg = p.text[600], bg = p.background[100] },
        CociagnosticSignError = { fg = p.error[500] },
        CocdiagnosticSignWarning = { fg = p.warning[500] },
        CocdiagnosticSignInfo = { fg = p.info[500] },
        CocdiagnosticSignHint = { fg = p.hint[500] },
        CocErrorSign = { fg = p.error[500] },
        CocWarningSign = { fg = p.warning[500] },
        CocInfoSign = { fg = p.info[500] },
        CocHintSign = { fg = p.hint[500] },
        CocErrorVirtualText = { fg = p.error[500], bg = p.background[100] },
        CocWarningVirtualText = { fg = p.warning[500], bg = p.background[100] },
        CocInfoVirtualText = { fg = p.info[500], bg = p.background[100] },
        CocHintVirtualText = { fg = p.hint[500], bg = p.background[100] },
        CocErrorLine = { fg = p.error[500] },
        CocWarningLine = { fg = p.warning[500] },
        CocInfoLine = { fg = p.info[500] },
        CocHintLine = { fg = p.hint[500] },
        CocUnderlineError = { undercurl = true, sp = p.error[500] },
        CocUnderlineWarning = { undercurl = true, sp = p.warning[500] },
        CocUnderlineInfo = { undercurl = true, sp = p.info[500] },
        CocUnderlineHint = { undercurl = true, sp = p.hint[500] },
        CocHighlightText = { bg = p.background[200] },
        CocStrikeThrough = { strikethrough = true },
        CocSymbolText = { fg = p.text[700] },
        CocSymbolDefault = { fg = p.text[700] },
        CocSymbolNamespace = { fg = p.secondary[500] },
        CocSymbolVariable = { fg = p.text[900] },
        CocSymbolConstant = { fg = p.accent[400] },
        CocSymbolString = { fg = p.accent[300] },
        CocSymbolNumber = { fg = p.primary[400] },
        CocSymbolBoolean = { fg = p.primary[400] },
        CocSymbolArray = { fg = p.primary[400] },
        CocSymbolObject = { fg = p.text[800] },
        CocSymbolKey = { fg = p.primary[500] },
        CocSymbolNull = { fg = p.text[500] },
        CocSymbolModule = { fg = p.secondary[500] },
        CocSymbolProperty = { fg = p.text[800] },
        CocSymbolOperator = { fg = p.text[700] },
        CocSymbolParam = { fg = p.text[800] },
        CocSymbolFunction = { fg = p.secondary[400] },
        CocSymbolClass = { fg = p.secondary[300] },
        CocSymbolStruct = { fg = p.secondary[300] },
        CocSymbolInterface = { fg = p.secondary[300] },
        CocSymbolEnum = { fg = p.secondary[300] },
        CocSymbolTypeParameter = { fg = p.secondary[300] },
        CocSymbolField = { fg = p.text[800] },
        CocSymbolMethod = { fg = p.secondary[400] },
        CocSymbolConstructor = { fg = p.secondary[300] },
        CocSymbolEnumMember = { fg = p.accent[400] },
        CocSymbolKeyword = { fg = p.primary[500] },
        CocSymbolFile = { fg = p.text[600] },
        CocSymbolFolder = { fg = p.text[600] },
        CocSymbolUnit = { fg = p.secondary[400] },
        CocSymbolValue = { fg = p.text[700] },
        CocSymbolReference = { fg = p.text[700] },
        CocSymbolSnippet = { fg = p.accent[500] },
    })

    highlights = extend(highlights, {
        -- Vim Illumate
        IlluminatedWord = { bg = p.background[200] },
        IlluminatedWordText = { bg = p.background[200] },
        IlluminatedWordRead = { bg = p.background[200] },
        IlluminatedWordWrite = { bg = p.background[200] },
    })

    highlights = extend(highlights, {
        -- GitGutter
        GitGutterAdd = { fg = p.success[500] },
        GitGutterAddLine = { bg = p.background[100] },
        GitGutterAddLineNr = { fg = p.success[500] },
        GitGutterChange = { fg = p.primary[500] },
        GitGutterChangeLine = { bg = p.background[100] },
        GitGutterChangeLineNr = { fg = p.primary[500] },
        GitGutterDelete = { fg = p.error[500] },
        GitGutterDeleteLine = { bg = p.background[100] },
        GitGutterDeleteLineNr = { fg = p.error[500] },
    })

    highlights = extend(highlights, {
        -- Vim Signify
        SignifySignAdd = { fg = p.success[500] },
        SignifySignChange = { fg = p.primary[500] },
        SignifySignDelete = { fg = p.error[500] },
        SignifySignDeleteFirst = { fg = p.error[500] },
    })

    highlights = extend(highlights, {
        -- Vim Sneak
        Sneak = { fg = p.background[50], bg = p.primary[500] },
        SneakScope = { bg = p.background[200] },
    })

    highlights = extend(highlights, {
        -- Vim Sandwich
        SandwichNormal = { fg = p.text[800], bg = p.background[200] },
        SandwichNormalNC = { fg = p.text[600], bg = p.background[100] },
        SandwichDelimiter = { fg = p.text[500] },
        SandwichBracket = { fg = p.primary[500] },
        SandwichKind = { fg = p.secondary[500] },
        SandwichReplaced = { fg = p.text[700], strikethrough = true },
    })

    highlights = extend(highlights, {
        -- Vim Airline
        AirlineNormal = { fg = p.text[800], bg = p.background[100] },
        AirlineNormalNC = { fg = p.text[600], bg = p.background[50] },
        AirlineInsert = { fg = p.background[50], bg = p.success[400] },
        AirlineInsertNC = { fg = p.text[600], bg = p.background[50] },
        AirlineVisual = { fg = p.background[50], bg = p.accent[400] },
        AirlineVisualNC = { fg = p.text[600], bg = p.background[50] },
        AirlineReplace = { fg = p.background[50], bg = p.error[400] },
        AirlineReplaceNC = { fg = p.text[600], bg = p.background[50] },
        AirlineCommand = { fg = p.background[50], bg = p.warning[400] },
        AirlineCommandNC = { fg = p.text[600], bg = p.background[50] },
        AirlineTerminal = { fg = p.background[50], bg = p.success[400] },
        AirlineTerminalNC = { fg = p.text[600], bg = p.background[50] },
        AirlineInactive = { fg = p.text[500], bg = p.background[50] },
        AirlineInactiveNC = { fg = p.text[500], bg = p.background[50] },
        AirlineAccent = { fg = p.primary[500], bg = p.background[100] },
        AirlineAccentNC = { fg = p.primary[500], bg = p.background[50] },
        AirlineTab = { fg = p.text[700], bg = p.background[100] },
        AirlineTabNC = { fg = p.text[500], bg = p.background[50] },
        AirlineTabSelected = { fg = p.primary[500], bg = p.background[200], bold = true },
        AirlineTabFill = { fg = p.text[700], bg = p.background[100] },
        AirlineTabFillNC = { fg = p.text[500], bg = p.background[50] },
        AirlineBuffer = { fg = p.text[700], bg = p.background[100] },
        AirlineBufferNC = { fg = p.text[500], bg = p.background[50] },
        AirlineBufferSelected = { fg = p.background[50], bg = p.primary[500], bold = true },
        AirlineBufferVisible = { fg = p.text[700], bg = p.background[200] },
        AirlineBufferIndex = { fg = p.primary[500], bg = p.background[100] },
        AirlineBufferIndexNC = { fg = p.primary[500], bg = p.background[50] },
        AirlineModified = { fg = p.warning[500], bg = p.background[100] },
        AirlineModifiedNC = { fg = p.warning[500], bg = p.background[50] },
        AirlineKeymap = { fg = p.secondary[500], bg = p.background[100] },
        AirlineKeymapNC = { fg = p.secondary[500], bg = p.background[50] },
        AirlineKeymapSel = { fg = p.primary[500], bg = p.background[200] },
    })

    return highlights
end

return M
