#!/bin/bash
echo "�\��t�@�C���Ɋ܂܂��TransportStreamID�̏���ύX���܂��B"
echo "�`�����l���ĕ҂Ȃǂ�TransportStreamID���ύX���ꂽ�Ƃ��Ɏg���܂��B"
echo "ChSet4.txt��ChSet5.txt�͂��炩���߃`�����l���X�L�����ȂǂōX�V���Ă��������B"
echo "�͂��߂ɔ�j��e�X�g���s���܂��B"
read -p "Press any key to continue... " -n1 -s
wine "$(dirname "$0")/tsidmove.exe" --dry-run
if [ $? -eq 1 ]; then
    echo ""
    echo ""
    echo "�e�X�g�͐���I�����܂����B���ۂɕύX���s���܂��B"
    echo "�K�v�Ȃ�\��t�@�C�����o�b�N�A�b�v���Ă��������B"
    read -p "Press any key to continue... " -n1 -s
    wine "$(dirname "$0")/tsidmove.exe" --run
    if [ $? -eq 1 ]; then
        exit 1
    else
        exit 0
    fi
else
    echo ""
    echo ""
    echo "�G���[���������܂����B�I�����܂��B"
    exit 1
fi
