{*******************************************************}
{                                                       }
{                        EhLib 10.0                     }
{                                                       }
{               TEhLibLanguageConsts class              }
{                                                       }
{   Copyright (c) 2011-2020 by Dmitry V. Bolshakov      }
{                                                       }
{*******************************************************}

unit EhLibLangConsts;

interface

{$I EhLib.Inc}

uses
  SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls;

type
{ TEhLibLanguageConsts }

  TEhLibLanguageConsts = class(TComponent)
  private
    FVisibleColumns: String;
    FPageOfPages: String;
    FPreview: String;
    FInvalidTextFormat: String;
    FClearSelectedCells: String;
    FFieldNameNotFound: String;
    FFindDialogStringNotFoundMessage: String;
    FIgnoreError: String;
    FTabularInformation: String;
    FInvalidVCLDBIFFormat: String;
    FErrorDuringInsertValue: String;
    FCut: String;
    FPaste: String;
    FSelectAll: String;
    FCopy: String;
    FDelete: String;
    FSortingByThisColumnIsNotPossibleEh: String;
    FUnexpectedExpressionBeforeNullEh: String;
    FSimpFilter_is_not_blank: String;
    FSTFilterListItem_All: String;
    FPivotSumFunctionCustom: String;
    FErrorInExpressionEh: String;
    FGroupingPanelText: String;
    FTheEntireGridEh: String;
    FPlannerEndTimeBeforeStartTimeEh: String;
    FGridSelectionInfo_Max: String;
    FSTFilterListItem_NotEmpties: String;
    FInsertRecordEh: String;
    FNextRecordEh: String;
    FDataColumnEh: String;
    FCancelButtonEh: String;
    FSTFilterListItem_CustomFilter: String;
    FPlannerPriorEventEh: String;
    FPivotSumFunctionCount: String;
    FPivotSumFunctionNon: String;
    FPivotSliceDayDisplayNameEh: String;
    FUnexpectedANDorOREh: String;
    FPivotSumFunctionMin: String;
    FPivotSliceNonDisplayNameEh: String;
    FSearchPanelEditorPromptText: String;
    FUnexpectedExpressionAfterOperatorEh: String;
    FQuoteIsAbsentEh: String;
    FSimpFilter_ends_with: String;
    FPivotSliceMinDisplayNameEh: String;
    FPivotSliceMonthDisplayNameEh: String;
    FPivotDataBuildingInProgressEh: String;
    FLastRecordEh: String;
    FSimpFilter_is_blank: String;
    FCurrentColumnEh: String;
    FGridSelectionInfo_Cnt: String;
    FSearchScopeEh: String;
    FPivotSumFunctiontAvg: String;
    FPivotSliceSecDisplayNameEh: String;
    FPivotValueFieldDisplayNameEh: String;
    FElapsedTimeEh: String;
    FLeftBracketExpectedEh: String;
    FGridSelectionInfo_Min: String;
    FDeleteAllRecordsQuestionEh: String;
    FDeleteMultipleRecordsQuestionEh: String;
    FGroupingByThisColumnIsNotPossibleEh: String;
    FSearchPanelFindPrevEh: String;
    FUnsupportedFieldTypeEh: String;
    FSimpFilter_not_in_list: String;
    FSimpFilter_not_like: String;
    FSimpFilter_equals: String;
    FSTFilterListItem_SortingByAscend: String;
    FSimpFilter_begins_with: String;
    FLabelColumnEh: String;
    FGridLoadingModeTextEh: String;
    FPivotSliceMSecDisplayNameEh: String;
    FPriorRecordEh: String;
    FSimpFilter_is_less_than: String;
    FCaseSensitiveEh: String;
    FRefreshRecordEh: String;
    FSimpFilter_does_not_end_with: String;
    FPlannerWeekTextEh: String;
    FSearchPanelOptionsEh: String;
    FRightBracketExpectedEh: String;
    FSTFilterListItem_ApplyFilter: String;
    FPlannerPeriodToEh: String;
    FPivotSumFunctionCountDistinct: String;
    FPivotValuesEh: String;
    FFindItemNameAllEh: String;
    FSearchPanelFindNextEh: String;
    FDuplicateVarNameEh: String;
    FNoDataEh: String;
    FSimpFilter_contains: String;
    FSimpFilter_is_greate_than: String;
    FPlannerResourceUnassignedEh: String;
    FPivotSliceWeekDisplayNameEh: String;
    FPivotRowsEh: String;
    FPivotColumnsEh: String;
    FGridSelectionInfo_Evg: String;
    FSimpFilter_in_list: String;
    FSimpFilter_like: String;
    FPivotSliceHourDisplayNameEh: String;
    FIncorrectExpressionEh: String;
    FPlannerNextEventEh: String;
    FPivotSumFunctionSum: String;
    FPivotSliceQuarterDisplayNameEh: String;
    FOKButtonEh: String;
    FPlannerDeletePlanItemEh: String;
    FGrandTotalEh: String;
    FConfirmCaptionEh: String;
    FCancelEditEh: String;
    FCellCountEh: String;
    FSimpFilter_does_not_equal: String;
    FSTFilterListItem_ClearFilterInColumn: String;
    FPostEditEh: String;
    FTotalEh: String;
    FPressESCToCancelEh: String;
    FSearchPanelCancelFilterEh: String;
    FSTFilterListItem_ClearFilter: String;
    FPivotSumFunctionMax: String;
    FDeleteRecordEh: String;
    FFirstRecordEh: String;
    FGridSelectionInfo_Sum: String;
    FCloseInBracketsEh: String;
    FPivotSliceYearDisplayNameEh: String;
    FEditRecordEh: String;
    FSTFilterListItem_SelectAll: String;
    FSTFilterListItem_Empties: String;
    FWholeWordsEh: String;
    FPlannerPeriodFromEh: String;
    FSearchPanelApplyFilterEh: String;
    FSimpFilter_does_not_contain: String;
    FSTFilterListItem_SortingByDescend: String;
    FTodayEh: String;
    FspInsertLongDate_Hint: String;
    FneHeader_Caption: String;
    FspFont_Caption: String;
    FLabel2_Caption: String;
    FLabel3_Caption: String;
    FspInsertTime_Caption: String;
    FspInsertShortDate_Caption: String;
    FneTopMargin_Caption: String;
    FLabel1_Caption: String;
    FLabel6_Caption: String;
    FspInsertDate_Hint: String;
    FneLeftMargin_Caption: String;
    FLabel7_Caption: String;
    FspInsertPages_Caption: String;
    FtsMargins_Caption: String;
    FspInsertPageNo_Hint: String;
    FneFooter_Caption: String;
    FLabel4_Caption: String;
    FLabel5_Caption: String;
    FrbFit_Caption: String;
    FfSpreadGridsPrintPageSetupDialogEh_Caption: String;
    FspInsertLongDate_Caption: String;
    FreHeaderCenter_Caption: String;
    FneRightMargin_Caption: String;
    FrdAdjust_Caption: String;
    FrbLandscape_Caption: String;
    FrbPortrait_Caption: String;
    FspInsertDate_Caption: String;
    FspFont_Hint: String;
    FspInsertPageNo_Caption: String;
    FspInsertTime_Hint: String;
    FspInsertShortDate_Hint: String;
    FtsHeaderFooter_Caption: String;
    FspInsertPages_Hint: String;
    FneBottomMargin_Caption: String;
    FfSpreadGridsPrintPageSetupDialogEh_tsPage_Caption: String;
    FDBGridEhFindDlg_bCancel_Caption: String;
    FDBGridEhFindDlg_cbMatchType_Caption: String;
    FDBGridEhFindDlg_dbcTreeFindRange_InCurrentLevel: String;
    FDBGridEhFindDlg_dbcTreeFindRange_InCurrentNode: String;
    FDBGridEhFindDlg_Label2_Caption: String;
    FDBGridEhFindDlg_Label3_Caption: String;
    FDBGridEhFindDlg_dbcTreeFindRange_InExpandedNodes: String;
    FDBGridEhFindDlg_Label1_Caption: String;
    FDBGridEhFindDlg_bFind_Caption: String;
    FDBGridEhFindDlg_cbUseFormat_Caption: String;
    FDBGridEhFindDlg_Label4_Caption: String;
    FDBGridEhFindDlg_dbcTreeFindRange_InAllNodes: String;
    FDBGridEhFindDlg_Caption: String;
    FDBGridEhFindDlg_cbFindDirection_Down: String;
    FDBGridEhFindDlg_cbMatchinType_FromBeging: String;
    FDBGridEhFindDlg_cbMatchinType_WholeField: String;
    FDBGridEhFindDlg_cbCharCase_Caption: String;
    FDBGridEhFindDlg_cbFindDirection_All: String;
    FDBGridEhFindDlg_cbMatchinType_FromAnyPart: String;
    FDBGridEhFindDlg_cbFindDirection_Up: String;
    FDBGridEhSimpleFilterDialog_Caption: String;
    FDBGridEhSimpleFilterDialog_rbAnd_Caption: String;
    FDBGridEhSimpleFilterDialog_rbOr_Caption: String;
    FDBGridEhSimpleFilterDialog_Label2_Caption: String;
    FDBGridEhSimpleFilterDialog_Label3_Caption: String;
    FDBGridEhSimpleFilterDialog_Label1_Caption: String;
    FfEditPivotField_Caption: String;
    FfEditPivotField_fAggrFunc_Caption: String;
    FfEditPivotField_lDisplayFormat_Caption: String;
    FPictureEditorDialog_bZoomOut_Caption: String;
    FPictureEditorDialog_bZoomIn_Caption: String;
    FPictureEditorDialog_bCut_Caption: String;
    FPictureEditorDialog_Save_Caption: String;
    FPictureEditorDialog_Caption: String;
    FPictureEditorDialog_bPaste_Caption: String;
    FPictureEditorDialog_bReset_Caption: String;
    FPictureEditorDialog_Clear_Caption: String;
    FPictureEditorDialog_bCopy_Caption: String;
    FPictureEditorDialog_Load_Caption: String;
    FPlannerItemForm_AllDayCheck_Caption: String;
    FPlannerItemForm_Label2_Caption: String;
    FPlannerItemForm_Label3_Caption: String;
    FPlannerItemForm_Label1_Caption: String;
    FPlannerItemForm_Caption: String;
    FSimpFilter_is_less_than_or_equall_to: String;
    FSimpFilter_is_greate_than_or_equall_to: String;
    FSimpFilter_does_not_begin_with: String;
    FPivotDataIsNotLoadedEh: String;
    FBeginsWithEh: String;
    FPreviewForm_Caption: String;
    FPreviewForm_Print_Hint: String;
    FPreviewForm_PrinterSetupDialog_Hint: String;
    FPreviewForm_Print_Caption: String;
    FPreviewForm_MenuPageWidth: String;
    FPreviewForm_PrevPage_Caption: String;
    FPreviewForm_Close_Caption: String;
    FPreviewForm_NextPage_Caption: String;
    FPreviewForm_Scale_Caption: String;
    FPreviewForm_PrinterSetupDialog_Caption: String;
    FPreviewForm_MenuFullPage: String;
    FPreviewForm_PrevPage_Hint: String;
    FPreviewForm_Close_Hint: String;
    FPreviewForm_NextPage_Hint: String;
    FPreviewForm_Scale_Hint: String;
    FPreviewForm_Stop_Caption: String;
    FPrnDBGridEhSetupDialog_OptimalColWidths: String;
    FPrnDBGridEhSetupDialog_ScaleWholeGrid: String;
    FPrnDBGridEhSetupDialog_Right: String;
    FPrnDBGridEhSetupDialog_Colored: String;
    FPrnDBGridEhSetupDialog_StretchLongLines: String;
    FPrnDBGridEhSetupDialog_ChangeColumnWidths: String;
    FPrnDBGridEhSetupDialog_Bottom: String;
    FPrnDBGridEhSetupDialog_Margins: String;
    FPrnDBGridEhSetupDialog_FitWidthToPage: String;
    FPrnDBGridEhSetupDialog_PrinterSetup: String;
    FPrnDBGridEhSetupDialog_Caption: String;
    FPrnDBGridEhSetupDialog_Top: String;
    FPrnDBGridEhSetupDialog_Left: String;
    FPlannerItemForm_Resource: String;
    FLanguage: String;
    FPivotSumFunctionStDevp: String;
    FPivotSumFunctionProduct: String;
    FPivotSumFunctionStDev: String;
    FPivotSumFunctionVarp: String;
    FPivotSumFunctionVar: String;
    FMemoEditWin_Caption: String;
    FDBGridEhGroupingFooter_Count: String;
    FDBGridEhGroupingFooter_Sum: String;
    FDBGridEhGroupingFooter_Avg: String;
    FDBGridEhGroupingFooter_Max: String;
    FDBGridEhGroupingFooter_Min: String;
    FDBGridEhGroupingFooter_Empty: String;
    FCalculatorError: String;
    FCustomizeColumnsDialog: String;
    FDBGridEhCustomizeColumnsDialog_Hide_Hint: String;
    FDBGridEhCustomizeColumnsDialog_ColumnName: String;
    FDBGridEhCustomizeColumnsDialog_MoveDown_Hint: String;
    FDBGridEhCustomizeColumnsDialog_MoveUp_Hint: String;
    FDBGridEhCustomizeColumnsDialog_ColumnWidth: String;
    FDBGridEhCustomizeColumnsDialog_SetWidth_Hint: String;
    FDBGridEhCustomizeColumnsDialog_Show_Hint: String;
    FTDBGridEhCustomizeColumnsDialog_Caption: String;
    FDBGridEhCustomizeColumnsDialog_HiddenColumns: String;
    FDBGridEhCustomizeColumnsDialog_VisibleColumns: String;
    FDBGridEhCustomizeColumnsDialog_EnterColumnWidthS: String;
    FDBGridEhCustomizeColumnsDialog_EnterNumericalValue: String;

  public
    constructor Create(AOwner: TComponent); override;

  published
    property Language: String read FLanguage write FLanguage; 

    property ClearSelectedCells: String read FClearSelectedCells write FClearSelectedCells;
    property InvalidTextFormat: String read FInvalidTextFormat write FInvalidTextFormat;
    property InvalidVCLDBIFFormat: String read FInvalidVCLDBIFFormat write FInvalidVCLDBIFFormat;
    property ErrorDuringInsertValue: String read FErrorDuringInsertValue write FErrorDuringInsertValue;
    property IgnoreError: String read FIgnoreError write FIgnoreError;
    property TabularInformation: String read FTabularInformation write FTabularInformation;
    property PageOfPages: String read FPageOfPages write FPageOfPages;
    property Preview: String read FPreview write FPreview;
    property FieldNameNotFound: String read FFieldNameNotFound write FFieldNameNotFound;
    property FindDialogStringNotFoundMessage: String read FFindDialogStringNotFoundMessage write FFindDialogStringNotFoundMessage;
    property VisibleColumns: String read FVisibleColumns write FVisibleColumns;
    property Cut: String read FCut write FCut;
    property Copy: String read FCopy write FCopy;
    property Paste: String read FPaste write FPaste;
    property Delete: String read FDelete write FDelete;
    property SelectAll: String read FSelectAll write FSelectAll;
    property CustomizeColumnsDialog: String read FCustomizeColumnsDialog write FCustomizeColumnsDialog;

    property STFilterListItem_Empties: String read FSTFilterListItem_Empties write FSTFilterListItem_Empties;
    property STFilterListItem_NotEmpties: String read FSTFilterListItem_NotEmpties write FSTFilterListItem_NotEmpties;
    property STFilterListItem_All: String read FSTFilterListItem_All write FSTFilterListItem_All;
    property STFilterListItem_SelectAll: String read FSTFilterListItem_SelectAll write FSTFilterListItem_SelectAll;
    property STFilterListItem_ClearFilter: String read FSTFilterListItem_ClearFilter write FSTFilterListItem_ClearFilter;
    property STFilterListItem_ClearFilterInColumn: String read FSTFilterListItem_ClearFilterInColumn write FSTFilterListItem_ClearFilterInColumn;
    property STFilterListItem_SortingByDescend: String read FSTFilterListItem_SortingByDescend write FSTFilterListItem_SortingByDescend;
    property STFilterListItem_SortingByAscend: String read FSTFilterListItem_SortingByAscend write FSTFilterListItem_SortingByAscend;
    property STFilterListItem_ApplyFilter: String read FSTFilterListItem_ApplyFilter write FSTFilterListItem_ApplyFilter;
    property STFilterListItem_CustomFilter: String read FSTFilterListItem_CustomFilter write FSTFilterListItem_CustomFilter;

    property SimpFilter_equals: String read FSimpFilter_equals write FSimpFilter_equals;
    property SimpFilter_does_not_equal: String read FSimpFilter_does_not_equal write FSimpFilter_does_not_equal;
    property SimpFilter_is_greate_than: String read FSimpFilter_is_greate_than write FSimpFilter_is_greate_than;
    property SimpFilter_is_greate_than_or_equall_to: String read FSimpFilter_is_greate_than_or_equall_to write FSimpFilter_is_greate_than_or_equall_to;
    property SimpFilter_is_less_than: String read FSimpFilter_is_less_than  write FSimpFilter_is_less_than;
    property SimpFilter_is_less_than_or_equall_to: String read FSimpFilter_is_less_than_or_equall_to write FSimpFilter_is_less_than_or_equall_to;
    property SimpFilter_begins_with       : String read FSimpFilter_begins_with  write FSimpFilter_begins_with;
    property SimpFilter_does_not_begin_with: String read FSimpFilter_does_not_begin_with write FSimpFilter_does_not_begin_with;
    property SimpFilter_ends_with         : String read FSimpFilter_ends_with write FSimpFilter_ends_with;
    property SimpFilter_does_not_end_with : String read FSimpFilter_does_not_end_with  write FSimpFilter_does_not_end_with;
    property SimpFilter_contains          : String read FSimpFilter_contains write FSimpFilter_contains;
    property SimpFilter_does_not_contain  : String read FSimpFilter_does_not_contain   write FSimpFilter_does_not_contain ;
    property SimpFilter_like              : String read FSimpFilter_like write FSimpFilter_like;
    property SimpFilter_not_like          : String read FSimpFilter_not_like write FSimpFilter_not_like;
    property SimpFilter_in_list           : String read FSimpFilter_in_list write FSimpFilter_in_list;
    property SimpFilter_not_in_list       : String read FSimpFilter_not_in_list write FSimpFilter_not_in_list;
    property SimpFilter_is_blank          : String read FSimpFilter_is_blank write FSimpFilter_is_blank;
    property SimpFilter_is_not_blank      : String read FSimpFilter_is_not_blank write FSimpFilter_is_not_blank;

    property GroupingPanelText: String read FGroupingPanelText write FGroupingPanelText;

    property NoDataEh: String read FNoDataEh write FNoDataEh;
    property CalculatorError: String read FCalculatorError write FCalculatorError;

    property QuoteIsAbsentEh: String read FQuoteIsAbsentEh write FQuoteIsAbsentEh;
    property LeftBracketExpectedEh: String read FLeftBracketExpectedEh write FLeftBracketExpectedEh;
    property RightBracketExpectedEh: String read FRightBracketExpectedEh write FRightBracketExpectedEh;
    property ErrorInExpressionEh: String read FErrorInExpressionEh write FErrorInExpressionEh;
    property UnexpectedExpressionBeforeNullEh: String read FUnexpectedExpressionBeforeNullEh write FUnexpectedExpressionBeforeNullEh;
    property UnexpectedExpressionAfterOperatorEh: String read FUnexpectedExpressionAfterOperatorEh write FUnexpectedExpressionAfterOperatorEh;
    property IncorrectExpressionEh: String read FIncorrectExpressionEh write FIncorrectExpressionEh;
    property UnexpectedANDorOREh: String read FUnexpectedANDorOREh write FUnexpectedANDorOREh;

    property GridSelectionInfo_Sum: String read FGridSelectionInfo_Sum write FGridSelectionInfo_Sum;
    property GridSelectionInfo_Cnt: String read FGridSelectionInfo_Cnt write FGridSelectionInfo_Cnt;
    property GridSelectionInfo_Evg: String read FGridSelectionInfo_Evg write FGridSelectionInfo_Evg;
    property GridSelectionInfo_Min: String read FGridSelectionInfo_Min write FGridSelectionInfo_Min;
    property GridSelectionInfo_Max: String read FGridSelectionInfo_Max write FGridSelectionInfo_Max;
    property CellCountEh: String read FCellCountEh write FCellCountEh;

    property DBGridEhGroupingFooter_Sum: String read FDBGridEhGroupingFooter_Sum write FDBGridEhGroupingFooter_Sum;
    property DBGridEhGroupingFooter_Count: String read FDBGridEhGroupingFooter_Count write FDBGridEhGroupingFooter_Count;
    property DBGridEhGroupingFooter_Avg: String read FDBGridEhGroupingFooter_Avg write FDBGridEhGroupingFooter_Avg;
    property DBGridEhGroupingFooter_Max: String read FDBGridEhGroupingFooter_Max write FDBGridEhGroupingFooter_Max;
    property DBGridEhGroupingFooter_Min: String read FDBGridEhGroupingFooter_Min write FDBGridEhGroupingFooter_Min;
    property DBGridEhGroupingFooter_Empty: String read FDBGridEhGroupingFooter_Empty write FDBGridEhGroupingFooter_Empty;

    property FirstRecordEh: String read FFirstRecordEh write FFirstRecordEh;
    property PriorRecordEh: String read FPriorRecordEh write FPriorRecordEh;
    property NextRecordEh: String read FNextRecordEh write FNextRecordEh;
    property LastRecordEh: String read FLastRecordEh write FLastRecordEh;
    property InsertRecordEh: String read FInsertRecordEh write FInsertRecordEh;
    property DeleteRecordEh: String read FDeleteRecordEh write FDeleteRecordEh;
    property EditRecordEh: String read FEditRecordEh write FEditRecordEh;
    property PostEditEh: String read FPostEditEh write FPostEditEh;
    property CancelEditEh: String read FCancelEditEh write FCancelEditEh;
    property ConfirmCaptionEh: String read FConfirmCaptionEh write FConfirmCaptionEh;
    property RefreshRecordEh: String read FRefreshRecordEh write FRefreshRecordEh;

    property DeleteMultipleRecordsQuestionEh: String read FDeleteMultipleRecordsQuestionEh write FDeleteMultipleRecordsQuestionEh;
    property DeleteAllRecordsQuestionEh: String read FDeleteAllRecordsQuestionEh write FDeleteAllRecordsQuestionEh;

    property DuplicateVarNameEh: String read FDuplicateVarNameEh write FDuplicateVarNameEh;

    property SearchPanelEditorPromptText: String read FSearchPanelEditorPromptText write FSearchPanelEditorPromptText;
    property UnsupportedFieldTypeEh: String read FUnsupportedFieldTypeEh write FUnsupportedFieldTypeEh;

    property SearchPanelApplyFilterEh: String read FSearchPanelApplyFilterEh write FSearchPanelApplyFilterEh;
    property SearchPanelCancelFilterEh: String read FSearchPanelCancelFilterEh write FSearchPanelCancelFilterEh;
    property SearchPanelFindNextEh: String read FSearchPanelFindNextEh write FSearchPanelFindNextEh;
    property SearchPanelFindPrevEh: String read FSearchPanelFindPrevEh write FSearchPanelFindPrevEh;
    property SearchPanelOptionsEh: String read FSearchPanelOptionsEh write FSearchPanelOptionsEh;

    property SortingByThisColumnIsNotPossibleEh: String read FSortingByThisColumnIsNotPossibleEh write FSortingByThisColumnIsNotPossibleEh;
    property GroupingByThisColumnIsNotPossibleEh: String read FGroupingByThisColumnIsNotPossibleEh write FGroupingByThisColumnIsNotPossibleEh;

    property FindItemNameAllEh: String read FFindItemNameAllEh write FFindItemNameAllEh;

    property ElapsedTimeEh: String read FElapsedTimeEh write FElapsedTimeEh;
    property PivotDataBuildingInProgressEh: String read FPivotDataBuildingInProgressEh write FPivotDataBuildingInProgressEh;
    property PressESCToCancelEh: String read FPressESCToCancelEh write FPressESCToCancelEh;

    property GrandTotalEh: String read FGrandTotalEh write FGrandTotalEh;
    property TotalEh: String read FTotalEh write FTotalEh;
    property PivotValueFieldDisplayNameEh : String read FPivotValueFieldDisplayNameEh  write FPivotValueFieldDisplayNameEh ;
    property PivotRowsEh: String read FPivotRowsEh write FPivotRowsEh;
    property PivotColumnsEh: String read FPivotColumnsEh write FPivotColumnsEh;
    property PivotValuesEh: String read FPivotValuesEh write FPivotValuesEh;
    property PivotDataIsNotLoadedEh: String read FPivotDataIsNotLoadedEh write FPivotDataIsNotLoadedEh;

    property PivotSliceNonDisplayNameEh: String read FPivotSliceNonDisplayNameEh write FPivotSliceNonDisplayNameEh;
    property PivotSliceYearDisplayNameEh: String read FPivotSliceYearDisplayNameEh write FPivotSliceYearDisplayNameEh;
    property PivotSliceQuarterDisplayNameEh: String read FPivotSliceQuarterDisplayNameEh write FPivotSliceQuarterDisplayNameEh;
    property PivotSliceMonthDisplayNameEh: String read FPivotSliceMonthDisplayNameEh write FPivotSliceMonthDisplayNameEh;
    property PivotSliceWeekDisplayNameEh: String read FPivotSliceWeekDisplayNameEh write FPivotSliceWeekDisplayNameEh;
    property PivotSliceDayDisplayNameEh: String read FPivotSliceDayDisplayNameEh write FPivotSliceDayDisplayNameEh;
    property PivotSliceHourDisplayNameEh: String read FPivotSliceHourDisplayNameEh write FPivotSliceHourDisplayNameEh;
    property PivotSliceMinDisplayNameEh: String read FPivotSliceMinDisplayNameEh write FPivotSliceMinDisplayNameEh;
    property PivotSliceSecDisplayNameEh: String read FPivotSliceSecDisplayNameEh write FPivotSliceSecDisplayNameEh;
    property PivotSliceMSecDisplayNameEh: String read FPivotSliceMSecDisplayNameEh write FPivotSliceMSecDisplayNameEh;

    property PivotSumFunctionNon: String read FPivotSumFunctionNon write FPivotSumFunctionNon;
    property PivotSumFunctionSum: String read FPivotSumFunctionSum write FPivotSumFunctionSum;
    property PivotSumFunctionCount: String read FPivotSumFunctionCount write FPivotSumFunctionCount;
    property PivotSumFunctiontAvg: String read FPivotSumFunctiontAvg write FPivotSumFunctiontAvg;
    property PivotSumFunctionMax: String read FPivotSumFunctionMax write FPivotSumFunctionMax;
    property PivotSumFunctionMin: String read FPivotSumFunctionMin write FPivotSumFunctionMin;
    property PivotSumFunctionCountDistinct: String read FPivotSumFunctionCountDistinct write FPivotSumFunctionCountDistinct;
    property PivotSumFunctionProduct: String read FPivotSumFunctionProduct write FPivotSumFunctionProduct;
    property PivotSumFunctionStDev: String read FPivotSumFunctionStDev write FPivotSumFunctionStDev;
    property PivotSumFunctionStDevp: String read FPivotSumFunctionStDevp write FPivotSumFunctionStDevp;
    property PivotSumFunctionVar: String read FPivotSumFunctionVar write FPivotSumFunctionVar;
    property PivotSumFunctionVarp: String read FPivotSumFunctionVarp write FPivotSumFunctionVarp;
    property PivotSumFunctionCustom: String read FPivotSumFunctionCustom write FPivotSumFunctionCustom;

    property PlannerResourceUnassignedEh: String read FPlannerResourceUnassignedEh write FPlannerResourceUnassignedEh;
    property PlannerNextEventEh: String read FPlannerNextEventEh write FPlannerNextEventEh;
    property PlannerPriorEventEh: String read FPlannerPriorEventEh write FPlannerPriorEventEh;
    property PlannerDeletePlanItemEh: String read FPlannerDeletePlanItemEh write FPlannerDeletePlanItemEh;
    property PlannerPeriodFromEh: String read FPlannerPeriodFromEh write FPlannerPeriodFromEh;
    property PlannerPeriodToEh: String read FPlannerPeriodToEh write FPlannerPeriodToEh;
    property PlannerWeekTextEh: String read FPlannerWeekTextEh write FPlannerWeekTextEh;
    property PlannerEndTimeBeforeStartTimeEh: String read FPlannerEndTimeBeforeStartTimeEh write FPlannerEndTimeBeforeStartTimeEh;

    property OKButtonEh: String read FOKButtonEh write FOKButtonEh;
    property CancelButtonEh: String read FCancelButtonEh write FCancelButtonEh;

    property GridLoadingModeTextEh: String read FGridLoadingModeTextEh write FGridLoadingModeTextEh;

    property SearchScopeEh: String read FSearchScopeEh write FSearchScopeEh;
    property CurrentColumnEh: String read FCurrentColumnEh write FCurrentColumnEh;
    property TheEntireGridEh: String read FTheEntireGridEh write FTheEntireGridEh;
    property CaseSensitiveEh: String read FCaseSensitiveEh write FCaseSensitiveEh;
    property WholeWordsEh: String read FWholeWordsEh write FWholeWordsEh;
    property BeginsWithEh: String read FBeginsWithEh write FBeginsWithEh;
    property CloseInBracketsEh: String read FCloseInBracketsEh write FCloseInBracketsEh;

    property LabelColumnEh: String read FLabelColumnEh write FLabelColumnEh;
    property DataColumnEh: String read FDataColumnEh write FDataColumnEh;

    property TodayEh: String read FTodayEh write FTodayEh;

    property PreviewForm_Caption: String read FPreviewForm_Caption write FPreviewForm_Caption;
    property PreviewForm_Print_Hint: String read FPreviewForm_Print_Hint write FPreviewForm_Print_Hint;
    property PreviewForm_Print_Caption: String read FPreviewForm_Print_Caption write FPreviewForm_Print_Caption;
    property PreviewForm_PrinterSetupDialog_Hint: String read FPreviewForm_PrinterSetupDialog_Hint write FPreviewForm_PrinterSetupDialog_Hint;
    property PreviewForm_PrinterSetupDialog_Caption: String read FPreviewForm_PrinterSetupDialog_Caption write FPreviewForm_PrinterSetupDialog_Caption;
    property PreviewForm_Scale_Hint: String read FPreviewForm_Scale_Hint write FPreviewForm_Scale_Hint;
    property PreviewForm_Scale_Caption: String read FPreviewForm_Scale_Caption write FPreviewForm_Scale_Caption;
    property PreviewForm_PrevPage_Hint: String read FPreviewForm_PrevPage_Hint write FPreviewForm_PrevPage_Hint;
    property PreviewForm_PrevPage_Caption: String read FPreviewForm_PrevPage_Caption write FPreviewForm_PrevPage_Caption;
    property PreviewForm_NextPage_Hint: String read FPreviewForm_NextPage_Hint write FPreviewForm_NextPage_Hint;
    property PreviewForm_NextPage_Caption: String read FPreviewForm_NextPage_Caption write FPreviewForm_NextPage_Caption;
    property PreviewForm_Stop_Caption: String read FPreviewForm_Stop_Caption write FPreviewForm_Stop_Caption;
    property PreviewForm_Close_Hint: String read FPreviewForm_Close_Hint write FPreviewForm_Close_Hint;
    property PreviewForm_Close_Caption: String read FPreviewForm_Close_Caption write FPreviewForm_Close_Caption;
    property PreviewForm_MenuPageWidth: String read FPreviewForm_MenuPageWidth write FPreviewForm_MenuPageWidth;
    property PreviewForm_MenuFullPage: String read FPreviewForm_MenuFullPage write FPreviewForm_MenuFullPage;

    property PrnDBGridEhSetupDialog_Caption: String read FPrnDBGridEhSetupDialog_Caption write FPrnDBGridEhSetupDialog_Caption;
    property PrnDBGridEhSetupDialog_Margins: String read FPrnDBGridEhSetupDialog_Margins write FPrnDBGridEhSetupDialog_Margins;
    property PrnDBGridEhSetupDialog_Top: String read FPrnDBGridEhSetupDialog_Top write FPrnDBGridEhSetupDialog_Top;
    property PrnDBGridEhSetupDialog_Bottom: String read FPrnDBGridEhSetupDialog_Bottom write FPrnDBGridEhSetupDialog_Bottom;
    property PrnDBGridEhSetupDialog_Left: String read FPrnDBGridEhSetupDialog_Left write FPrnDBGridEhSetupDialog_Left;
    property PrnDBGridEhSetupDialog_Right: String read FPrnDBGridEhSetupDialog_Right write FPrnDBGridEhSetupDialog_Right;
    property PrnDBGridEhSetupDialog_StretchLongLines: String read FPrnDBGridEhSetupDialog_StretchLongLines write FPrnDBGridEhSetupDialog_StretchLongLines;
    property PrnDBGridEhSetupDialog_PrinterSetup: String read FPrnDBGridEhSetupDialog_PrinterSetup write FPrnDBGridEhSetupDialog_PrinterSetup;
    property PrnDBGridEhSetupDialog_Colored: String read FPrnDBGridEhSetupDialog_Colored write FPrnDBGridEhSetupDialog_Colored;
    property PrnDBGridEhSetupDialog_ScaleWholeGrid: String read FPrnDBGridEhSetupDialog_ScaleWholeGrid write FPrnDBGridEhSetupDialog_ScaleWholeGrid;
    property PrnDBGridEhSetupDialog_ChangeColumnWidths: String read FPrnDBGridEhSetupDialog_ChangeColumnWidths write FPrnDBGridEhSetupDialog_ChangeColumnWidths;
    property PrnDBGridEhSetupDialog_FitWidthToPage: String read FPrnDBGridEhSetupDialog_FitWidthToPage write FPrnDBGridEhSetupDialog_FitWidthToPage;
    property PrnDBGridEhSetupDialog_OptimalColWidths: String read FPrnDBGridEhSetupDialog_OptimalColWidths write FPrnDBGridEhSetupDialog_OptimalColWidths;

    property PlannerItemForm_Caption: String read FPlannerItemForm_Caption write FPlannerItemForm_Caption;
    property PlannerItemForm_Item_Title: String read FPlannerItemForm_Label1_Caption write FPlannerItemForm_Label1_Caption;
    property PlannerItemForm_Item_StartTime: String read FPlannerItemForm_Label2_Caption write FPlannerItemForm_Label2_Caption;
    property PlannerItemForm_Item_EndTime: String read FPlannerItemForm_Label3_Caption write FPlannerItemForm_Label3_Caption;
    property PlannerItemForm_AllDayCheck: String read FPlannerItemForm_AllDayCheck_Caption write FPlannerItemForm_AllDayCheck_Caption;
    property PlannerItemForm_Resource: String read FPlannerItemForm_Resource write FPlannerItemForm_Resource;

    property PictureEditorDialog_Caption: String read FPictureEditorDialog_Caption write FPictureEditorDialog_Caption;
    property PictureEditorDialog_Load: String read FPictureEditorDialog_Load_Caption write FPictureEditorDialog_Load_Caption;
    property PictureEditorDialog_Save: String read FPictureEditorDialog_Save_Caption write FPictureEditorDialog_Save_Caption;
    property PictureEditorDialog_Clear: String read FPictureEditorDialog_Clear_Caption write FPictureEditorDialog_Clear_Caption;
    property PictureEditorDialog_Cut: String read FPictureEditorDialog_bCut_Caption write FPictureEditorDialog_bCut_Caption;
    property PictureEditorDialog_Copy: String read FPictureEditorDialog_bCopy_Caption write FPictureEditorDialog_bCopy_Caption;
    property PictureEditorDialog_Paste: String read FPictureEditorDialog_bPaste_Caption write FPictureEditorDialog_bPaste_Caption;
    property PictureEditorDialog_ZoomIn: String read FPictureEditorDialog_bZoomIn_Caption write FPictureEditorDialog_bZoomIn_Caption;
    property PictureEditorDialog_ZoomOut: String read FPictureEditorDialog_bZoomOut_Caption write FPictureEditorDialog_bZoomOut_Caption;
    property PictureEditorDialog_Reset: String read FPictureEditorDialog_bReset_Caption write FPictureEditorDialog_bReset_Caption;

    property EditPivotField_Caption: String read FfEditPivotField_Caption write FfEditPivotField_Caption;
    property EditPivotField_AggrFunc: String read FfEditPivotField_fAggrFunc_Caption write FfEditPivotField_fAggrFunc_Caption;
    property EditPivotField_DisplayFormat: String read FfEditPivotField_lDisplayFormat_Caption write FfEditPivotField_lDisplayFormat_Caption;

    property DBGridEhSimpleFilterDialog_Caption: String read FDBGridEhSimpleFilterDialog_Caption write FDBGridEhSimpleFilterDialog_Caption;
    property DBGridEhSimpleFilterDialog_ShowRecordsWhere: String read FDBGridEhSimpleFilterDialog_Label1_Caption write FDBGridEhSimpleFilterDialog_Label1_Caption;
    property DBGridEhSimpleFilterDialog_OneCharWildcardInfo: String read FDBGridEhSimpleFilterDialog_Label2_Caption write FDBGridEhSimpleFilterDialog_Label2_Caption;
    property DBGridEhSimpleFilterDialog_SeveralCharsWildcardInfo: String read FDBGridEhSimpleFilterDialog_Label3_Caption write FDBGridEhSimpleFilterDialog_Label3_Caption;
    property DBGridEhSimpleFilterDialog_Or_Caption: String read FDBGridEhSimpleFilterDialog_rbOr_Caption write FDBGridEhSimpleFilterDialog_rbOr_Caption;
    property DBGridEhSimpleFilterDialog_And_Caption: String read FDBGridEhSimpleFilterDialog_rbAnd_Caption write FDBGridEhSimpleFilterDialog_rbAnd_Caption;

    property DBGridEhFindDlg_Caption: String read FDBGridEhFindDlg_Caption write FDBGridEhFindDlg_Caption;
    property DBGridEhFindDlg_FindWhat: String read FDBGridEhFindDlg_Label1_Caption write FDBGridEhFindDlg_Label1_Caption;
    property DBGridEhFindDlg_FindIn: String read FDBGridEhFindDlg_Label2_Caption write FDBGridEhFindDlg_Label2_Caption;
    property DBGridEhFindDlg_Match: String read FDBGridEhFindDlg_cbMatchType_Caption write FDBGridEhFindDlg_cbMatchType_Caption;
    property DBGridEhFindDlg_Search: String read FDBGridEhFindDlg_Label3_Caption write FDBGridEhFindDlg_Label3_Caption;
    property DBGridEhFindDlg_FindInTree: String read FDBGridEhFindDlg_Label4_Caption write FDBGridEhFindDlg_Label4_Caption;
    property DBGridEhFindDlg_FindNext: String read FDBGridEhFindDlg_bFind_Caption write FDBGridEhFindDlg_bFind_Caption;
    property DBGridEhFindDlg_Close: String read FDBGridEhFindDlg_bCancel_Caption write FDBGridEhFindDlg_bCancel_Caption;
    property DBGridEhFindDlg_FromAnyPart: String read FDBGridEhFindDlg_cbMatchinType_FromAnyPart write FDBGridEhFindDlg_cbMatchinType_FromAnyPart;
    property DBGridEhFindDlg_WholeField: String read FDBGridEhFindDlg_cbMatchinType_WholeField write FDBGridEhFindDlg_cbMatchinType_WholeField;
    property DBGridEhFindDlg_FromBeging: String read FDBGridEhFindDlg_cbMatchinType_FromBeging write FDBGridEhFindDlg_cbMatchinType_FromBeging;
    property DBGridEhFindDlg_Direction_Up: String read FDBGridEhFindDlg_cbFindDirection_Up write FDBGridEhFindDlg_cbFindDirection_Up;
    property DBGridEhFindDlg_Direction_Down: String read FDBGridEhFindDlg_cbFindDirection_Down write FDBGridEhFindDlg_cbFindDirection_Down;
    property DBGridEhFindDlg_Direction_All: String read FDBGridEhFindDlg_cbFindDirection_All write FDBGridEhFindDlg_cbFindDirection_All;
    property DBGridEhFindDlg_MatchCase: String read FDBGridEhFindDlg_cbCharCase_Caption write FDBGridEhFindDlg_cbCharCase_Caption;
    property DBGridEhFindDlg_MatchFormat: String read FDBGridEhFindDlg_cbUseFormat_Caption write FDBGridEhFindDlg_cbUseFormat_Caption;
    property DBGridEhFindDlg_TreeRange_InAllNodes: String read FDBGridEhFindDlg_dbcTreeFindRange_InAllNodes write FDBGridEhFindDlg_dbcTreeFindRange_InAllNodes;
    property DBGridEhFindDlg_TreeRange_InExpandedNodes: String read FDBGridEhFindDlg_dbcTreeFindRange_InExpandedNodes write FDBGridEhFindDlg_dbcTreeFindRange_InExpandedNodes;
    property DBGridEhFindDlg_TreeRange_InCurrentLevel: String read FDBGridEhFindDlg_dbcTreeFindRange_InCurrentLevel write FDBGridEhFindDlg_dbcTreeFindRange_InCurrentLevel;
    property DBGridEhFindDlg_TreeRange_InCurrentNode: String read FDBGridEhFindDlg_dbcTreeFindRange_InCurrentNode write FDBGridEhFindDlg_dbcTreeFindRange_InCurrentNode;

    property PrintPageSetupDialog_Caption: String read FfSpreadGridsPrintPageSetupDialogEh_Caption write FfSpreadGridsPrintPageSetupDialogEh_Caption;
    property PrintPageSetupDialog_Page: String read FfSpreadGridsPrintPageSetupDialogEh_tsPage_Caption write FfSpreadGridsPrintPageSetupDialogEh_tsPage_Caption;
    property PrintPageSetupDialog_Orientation: String read FLabel1_Caption write FLabel1_Caption;
    property PrintPageSetupDialog_Scaling: String read FLabel2_Caption write FLabel2_Caption;
    property PrintPageSetupDialog_Portrait: String read FrbPortrait_Caption write FrbPortrait_Caption;
    property PrintPageSetupDialog_Landscape: String read FrbLandscape_Caption write FrbLandscape_Caption;
    property PrintPageSetupDialog_PrNormalSize: String read FLabel3_Caption write FLabel3_Caption;
    property PrintPageSetupDialog_PageWideBy: String read FLabel4_Caption write FLabel4_Caption;
    property PrintPageSetupDialog_tall: String read FLabel5_Caption write FLabel5_Caption;
    property PrintPageSetupDialog_AdjustTo: String read FrdAdjust_Caption write FrdAdjust_Caption;
    property PrintPageSetupDialog_FitTo: String read FrbFit_Caption write FrbFit_Caption;
    property PrintPageSetupDialog_Margins: String read FtsMargins_Caption write FtsMargins_Caption;
    property PrintPageSetupDialog_Left: String read FneLeftMargin_Caption write FneLeftMargin_Caption;
    property PrintPageSetupDialog_Top: String read FneTopMargin_Caption write FneTopMargin_Caption;
    property PrintPageSetupDialog_Bottom: String read FneBottomMargin_Caption write FneBottomMargin_Caption;
    property PrintPageSetupDialog_Right: String read FneRightMargin_Caption write FneRightMargin_Caption;
    property PrintPageSetupDialog_Header: String read FneHeader_Caption write FneHeader_Caption;
    property PrintPageSetupDialog_Footer: String read FneFooter_Caption write FneFooter_Caption;
    property PrintPageSetupDialog_HeaderFooter: String read FtsHeaderFooter_Caption write FtsHeaderFooter_Caption;
    property PrintPageSetupDialog_ChangeFont: String read FspFont_Hint write FspFont_Hint;
    property PrintPageSetupDialog_FontAbr: String read FspFont_Caption write FspFont_Caption;
    property PrintPageSetupDialog_InsertPageNo_Hint: String read FspInsertPageNo_Hint write FspInsertPageNo_Hint;
    property PrintPageSetupDialog_InsertPageNo_Abr: String read FspInsertPageNo_Caption write FspInsertPageNo_Caption;
    property PrintPageSetupDialog_InsertPages_Hint: String read FspInsertPages_Hint write FspInsertPages_Hint;
    property PrintPageSetupDialog_InsertPages_Abr: String read FspInsertPages_Caption write FspInsertPages_Caption;
    property PrintPageSetupDialog_InsertDate_Hint: String read FspInsertDate_Hint write FspInsertDate_Hint;
    property PrintPageSetupDialog_InsertDate_Abr: String read FspInsertDate_Caption write FspInsertDate_Caption;
    property PrintPageSetupDialog_InsertShortDate_Hint: String read FspInsertShortDate_Hint write FspInsertShortDate_Hint;
    property PrintPageSetupDialog_InsertShortDate_Abr: String read FspInsertShortDate_Caption write FspInsertShortDate_Caption;
    property PrintPageSetupDialog_InsertLongDate_Hint: String read FspInsertLongDate_Hint write FspInsertLongDate_Hint;
    property PrintPageSetupDialog_InsertLongDate_Abr: String read FspInsertLongDate_Caption write FspInsertLongDate_Caption;
    property PrintPageSetupDialog_InsertTime_Hint: String read FspInsertTime_Hint write FspInsertTime_Hint;
    property PrintPageSetupDialog_InsertTime_Abr: String read FspInsertTime_Caption write FspInsertTime_Caption;
    property PrintPageSetupDialog_PageHeader: String read FLabel6_Caption write FLabel6_Caption;
    property PrintPageSetupDialog_PageFooter: String read FLabel7_Caption write FLabel7_Caption;
    property PrintPageSetupDialog_Center: String read FreHeaderCenter_Caption write FreHeaderCenter_Caption;

    property MemoEditWin_Caption: String read FMemoEditWin_Caption write FMemoEditWin_Caption;

    property DBGridEhCustomizeColumnsDialog_VisibleColumns: String read FDBGridEhCustomizeColumnsDialog_VisibleColumns write FDBGridEhCustomizeColumnsDialog_VisibleColumns;
    property DBGridEhCustomizeColumnsDialog_HiddenColumns: String read FDBGridEhCustomizeColumnsDialog_HiddenColumns write FDBGridEhCustomizeColumnsDialog_HiddenColumns;
    property DBGridEhCustomizeColumnsDialog_Caption: String read FTDBGridEhCustomizeColumnsDialog_Caption write FTDBGridEhCustomizeColumnsDialog_Caption;
    property DBGridEhCustomizeColumnsDialog_ColumnName: String read FDBGridEhCustomizeColumnsDialog_ColumnName write FDBGridEhCustomizeColumnsDialog_ColumnName;
    property DBGridEhCustomizeColumnsDialog_ColumnWidth: String read FDBGridEhCustomizeColumnsDialog_ColumnWidth write FDBGridEhCustomizeColumnsDialog_ColumnWidth;
    property DBGridEhCustomizeColumnsDialog_SetWidth_Hint: String read FDBGridEhCustomizeColumnsDialog_SetWidth_Hint write FDBGridEhCustomizeColumnsDialog_SetWidth_Hint;
    property DBGridEhCustomizeColumnsDialog_MoveUp_Hint: String read FDBGridEhCustomizeColumnsDialog_MoveUp_Hint write FDBGridEhCustomizeColumnsDialog_MoveUp_Hint;
    property DBGridEhCustomizeColumnsDialog_MoveDown_Hint: String read FDBGridEhCustomizeColumnsDialog_MoveDown_Hint write FDBGridEhCustomizeColumnsDialog_MoveDown_Hint;
    property DBGridEhCustomizeColumnsDialog_Hide_Hint: String read FDBGridEhCustomizeColumnsDialog_Hide_Hint write FDBGridEhCustomizeColumnsDialog_Hide_Hint;
    property DBGridEhCustomizeColumnsDialog_Show_Hint: String read FDBGridEhCustomizeColumnsDialog_Show_Hint write FDBGridEhCustomizeColumnsDialog_Show_Hint;
    property DBGridEhCustomizeColumnsDialog_EnterNumericalValue: String read FDBGridEhCustomizeColumnsDialog_EnterNumericalValue write FDBGridEhCustomizeColumnsDialog_EnterNumericalValue;
    property DBGridEhCustomizeColumnsDialog_EnterColumnWidthS: String read FDBGridEhCustomizeColumnsDialog_EnterColumnWidthS write FDBGridEhCustomizeColumnsDialog_EnterColumnWidthS;
  end;

function EhLibLanguageConsts: TEhLibLanguageConsts;

implementation

uses LanguageResManEh;

{$R EhLibLangConsts.dfm}

var
  FEhLibLanguageConsts: TEhLibLanguageConsts;

procedure InitUnit;
begin
  LanguageResourceManagerEh.AddLocalizableObject(EhLibLanguageConsts, EhLibLanguageConsts.ClassName, 'EhLibLangConsts', 'ENU');
end;

procedure FinalizeUnit;
begin
  FreeAndNil(FEhLibLanguageConsts);
end;

function EhLibLanguageConsts: TEhLibLanguageConsts;
begin
  if (FEhLibLanguageConsts = nil) then
    FEhLibLanguageConsts := TEhLibLanguageConsts.Create(nil);
  Result := FEhLibLanguageConsts;
end;

{ TEhLibLanguageConsts }

constructor TEhLibLanguageConsts.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  DBGridEhGroupingFooter_Sum := 'Sum';
  DBGridEhGroupingFooter_Count := 'Count';
  DBGridEhGroupingFooter_Avg := 'Average';
  DBGridEhGroupingFooter_Max := 'Max';
  DBGridEhGroupingFooter_Min := 'Min';
  DBGridEhGroupingFooter_Empty := '(Empty)';

  CalculatorError := 'Error';
  CustomizeColumnsDialog := '�Զ�����ʾ�� ...';

  DBGridEhCustomizeColumnsDialog_VisibleColumns := '�ɼ���';
  DBGridEhCustomizeColumnsDialog_HiddenColumns := '������';
  DBGridEhCustomizeColumnsDialog_Caption := '�ֶ�����';
  DBGridEhCustomizeColumnsDialog_ColumnName := '����';
  DBGridEhCustomizeColumnsDialog_ColumnWidth := '�п��';
  DBGridEhCustomizeColumnsDialog_SetWidth_Hint := '���ÿ��';
  DBGridEhCustomizeColumnsDialog_MoveUp_Hint := '����';
  DBGridEhCustomizeColumnsDialog_MoveDown_Hint := '����';
  DBGridEhCustomizeColumnsDialog_Hide_Hint := '����';
  DBGridEhCustomizeColumnsDialog_Show_Hint := '��ʾ';
  DBGridEhCustomizeColumnsDialog_EnterNumericalValue := '������ֵ������';
  DBGridEhCustomizeColumnsDialog_EnterColumnWidthS := '�п�';

  InitInheritedComponent(Self, TCustomControl);
end;

initialization
  InitUnit;
finalization
  FinalizeUnit;
end.

