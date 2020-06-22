--message('Das Lit Taxi Addon!')

--Charakterinfos
zoneName = GetZoneText();
playerClass, localizedClass = UnitClass("player");
playerName = GetUnitName("player", false);


--SendChatMessage("inv", "WHISPER", "Common", "Wilder");

    -- UI Fenster
    local UIConfig = CreateFrame("Frame", "LitTaxiFrame", UIParent, "BasicFrameTemplateWithInset");
    LitTaxiFrame:SetMovable(true)
    LitTaxiFrame:EnableMouse(true)
    LitTaxiFrame:RegisterForDrag("LeftButton");
    LitTaxiFrame:SetScript("OnDragStart", LitTaxiFrame.StartMoving)
    LitTaxiFrame:SetScript("OnDragStop", LitTaxiFrame.StopMovingOrSizing)

    UIConfig:SetSize(300, 360);
    UIConfig:SetPoint("CENTER", UIParent, "CENTER")
    UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY");
    UIConfig.title:SetFontObject("GameFontHighlight");
    UIConfig.title:SetPoint("LEFT", UIConfig.TitleBg, "LEFT", 5, 0);
    UIConfig.title:SetText("Lit Taxi");
    UIConfig:SetMovable(true);

    -- Buttons
    UIConfig.saveButton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
    UIConfig.saveButton:SetPoint("CENTER", UIConfig, "TOP", 0, -70);
    UIConfig.saveButton:SetText("1Button");
    UIConfig.saveButton:SetNormalFontObject("GameFontNormalLarge");
    UIConfig.saveButton:SetHighlightFontObject("GameFontHighlightLarge");

    UIConfig.checkbtn1 = CreateFrame("CheckButton", nil, UIConfig, "UICheckButtonTemplate");
    UIConfig.checkbtn1:SetPoint("TOPLEFT", UIConfig, "BOTTOM", 0, 30);
    UIConfig.checkbtn1.text:SetText("ich bin Bereit zu Porten");

    UIConfig.saveButton:SetScript("OnClick", function(self)
        print("Charakter:" .. zoneName .. "" .. playerClass .. "" .. playerName);
    end)
