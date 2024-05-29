
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/6GIP.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/6GIP.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [1105,1201,1106,113,114,116,140,245,246,247,115,117,118,119,86,81,360,1193,1194,359,1195,1198,1199,1362,1066,1082,1083,1366,1346,1347,1353,1344,1345,110,291,138,139,231,646,666,668,672,82,84,670,487,488,638,639,229,232,239,243,624,1094,1095,707,708,1093,736,1096,1367,700,703,1121,675,1122,1120,685] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1432,1434,1051,1220,1055,1056,1065,1357,1358,1361,1342,1351,1356,1327,1536,1538,1474,1475,1485,1486,1487,1309,1310,1311,1308,1435,1565,1566,1391,1401,1405,1364] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1081,1089,1096,1396,1367,723,725,727,1098,1787,1871,1855,1857,1381,1383,1384,1083,1858] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [949,953,955,2275,2278,1546,1548,2263,2264,1518,1519,1520,1547,1556,2265,941,942,1544,1580,1554,2271,2260,2254,2243] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1136,1137,1138,1153,1155,457,656,658,680,678,1134,1148,1139,449,476,459,654,489,490] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [900,924,453,455,926,928,918,920,921,2306,952,955] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1024,956,941,1248,1250,1510,1512,1548,1520,963,1262] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [851,1157,746,747,826,828,862,824,1159,697,698] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1017,1018,1238,1301,1304,1014,1019,1003,411,1256,1257,1241,418,376] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1683,1760,1761,1816,1818,1651,2004,2005,2008,2022,1750] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        